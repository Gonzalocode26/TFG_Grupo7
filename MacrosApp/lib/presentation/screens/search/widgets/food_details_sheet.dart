import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../data/models/fat_secret_models.dart';
import '../../../../data/models/meal_type.dart';
import '../../../../data/models/food_details.dart';
import '../../../../data/remote/services/fat_secret_food_service.dart';
import '../../../providers/diary_provider.dart';

class FoodDetailsSheet extends ConsumerStatefulWidget {
  final String foodId;
  final MealType mealType;

  const FoodDetailsSheet({
    super.key,
    required this.foodId,
    required this.mealType,
  });

  @override
  ConsumerState<FoodDetailsSheet> createState() => _FoodDetailsSheetState();
}

class _FoodDetailsSheetState extends ConsumerState<FoodDetailsSheet> {
  late Future<FatSecretFoodDetails?> _futureDetails;
  int _selectedServingIndex = 0;
  double _quantity = 1.0;

  // Controlador para el TextField de gramos/ml
  final TextEditingController _quantityController = TextEditingController(text: '1.0');

  final _service = FatSecretFoodService();

  @override
  void initState() {
    super.initState();
    _futureDetails = _service.getFood(widget.foodId);
  }

  @override
  void dispose() {
    _quantityController.dispose();
    super.dispose();
  }

  // Comprueba si la porción se mide en peso/volumen para mostrar el TextField
  bool _isMetricServing(String description) {
    final lowerDesc = description.toLowerCase();
    return lowerDesc.contains('g') ||
        lowerDesc.contains('ml') ||
        lowerDesc.contains('oz');
  }

  void _updateQuantity(double newQuantity) {
    setState(() {
      _quantity = newQuantity;
      // Mantenemos sincronizado el TextField por si cambiamos de serving size
      if (_quantityController.text != newQuantity.toStringAsFixed(1) &&
          _quantityController.text != newQuantity.toInt().toString()) {
        _quantityController.text = newQuantity.toInt() == newQuantity
            ? newQuantity.toInt().toString()
            : newQuantity.toStringAsFixed(1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        children: [
          _buildHandle(),
          Expanded(
            child: FutureBuilder<FatSecretFoodDetails?>(
              future: _futureDetails,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError || snapshot.data == null) {
                  return const Center(child: Text('Error loading details 😢'));
                }

                final details = snapshot.data!;
                final servings = details.servings.serving;
                final currentServing = servings[_selectedServingIndex];

                return _buildContent(details, servings, currentServing);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(FatSecretFoodDetails details, List<FatSecretServing> servings, FatSecretServing currentServing) {
    final totalCals = currentServing.caloriesValue * _quantity;
    final totalProtein = currentServing.proteinValue * _quantity;
    final totalCarbs = currentServing.carbsValue * _quantity;
    final totalFat = currentServing.fatValue * _quantity;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Imagen de Cabecera
          _buildHeaderImage(details),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 2. Título y Badge
                Text(
                  details.foodName,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                if (details.foodType != null) ...[
                  const SizedBox(height: 8),
                  Chip(
                    label: Text(details.foodType!),
                    backgroundColor: Colors.grey.shade200,
                    side: BorderSide.none,
                  ),
                ],

                const SizedBox(height: 32),

                // 3. Selector de Porción
                const Text('Serving Size', style: TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      isExpanded: true,
                      value: _selectedServingIndex,
                      items: servings.asMap().entries.map((entry) {
                        return DropdownMenuItem(
                          value: entry.key,
                          child: Text(entry.value.servingDescription),
                        );
                      }).toList(),
                      onChanged: (newIndex) {
                        if (newIndex != null) {
                          setState(() {
                            _selectedServingIndex = newIndex;
                            // Resetear cantidad a 1 al cambiar de porción (opcional, pero buena UX)
                            _updateQuantity(1.0);
                          });
                        }
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // 4. Selector de Cantidad Dinámico
                const Text('Quantity', style: TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                _buildQuantitySelector(currentServing.servingDescription),

                const SizedBox(height: 32),

                // 5. Resumen de Macros
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _macroItem('Calories', '${totalCals.toInt()} kcal', Colors.purple),
                      _macroItem('Protein', '${totalProtein.toInt()}g', Colors.red),
                      _macroItem('Carbs', '${totalCarbs.toInt()}g', Colors.blue),
                      _macroItem('Fat', '${totalFat.toInt()}g', Colors.orange),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // 6. Botón Guardar
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9C27B0),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    ),
                    onPressed: () => _saveFood(details, currentServing, totalCals, totalProtein, totalCarbs, totalFat),
                    child: Text('ADD TO ${widget.mealType.displayName.toUpperCase()}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 32), // Margen inferior extra
              ],
            ),
          ),
        ],
      ),
    );
  }

  // NUEVO: Widget de Imagen
  Widget _buildHeaderImage(FatSecretFoodDetails details) {
    final imageUrl = details.mainImageUrl;

    if (imageUrl != null && imageUrl.isNotEmpty) {
      return CachedNetworkImage(
        imageUrl: imageUrl,
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          height: 200,
          color: Colors.grey.shade200,
          child: const Center(child: CircularProgressIndicator()),
        ),
        errorWidget: (context, url, error) => _buildImageFallback(),
      );
    }
    return _buildImageFallback();
  }

  Widget _buildImageFallback() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF9C27B0).withValues(alpha: 0.1),
            const Color(0xFF9C27B0).withValues(alpha: 0.3),
          ],
        ),
      ),
      child: const Icon(
        Icons.restaurant,
        size: 64,
        color: Color(0xFF9C27B0),
      ),
    );
  }

  // NUEVO: Selector dinámico
  Widget _buildQuantitySelector(String servingDescription) {
    if (_isMetricServing(servingDescription)) {
      // Mostrar TextField numérico
      return Row(
        children: [
          Expanded(
            child: TextField(
              controller: _quantityController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              ),
              onChanged: (value) {
                final doubleValue = double.tryParse(value);
                if (doubleValue != null && doubleValue > 0) {
                  _updateQuantity(doubleValue);
                }
              },
            ),
          ),
          const SizedBox(width: 16),
          // Mostramos la unidad al lado del input
          Text(
            servingDescription.replaceAll(RegExp(r'[0-9\.]'), '').trim(),
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      );
    } else {
      // Mostrar Stepper clásico
      return Row(
        children: [
          IconButton(
            onPressed: _quantity > 0.5 ? () => _updateQuantity(_quantity - 0.5) : null,
            icon: const Icon(Icons.remove_circle_outline),
            color: const Color(0xFF9C27B0),
          ),
          Text(
              _quantity.toInt() == _quantity ? _quantity.toInt().toString() : _quantity.toStringAsFixed(1),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
          ),
          IconButton(
            onPressed: () => _updateQuantity(_quantity + 0.5),
            icon: const Icon(Icons.add_circle_outline),
            color: const Color(0xFF9C27B0),
          ),
        ],
      );
    }
  }

  Widget _macroItem(String label, String value, Color color) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color)),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
      ],
    );
  }

  Widget _buildHandle() {
    return Center(
      child: Container(
        width: 40,
        height: 4,
        margin: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }

  void _saveFood(FatSecretFoodDetails details, FatSecretServing currentServing, double cals, double pro, double carbs, double fat) {
    final foodToSave = FoodDetails(
      id: details.foodId,
      name: details.foodName,
      calories: cals,
      protein: pro,
      fat: fat,
      carbs: carbs,
      servingSize: _quantity,
      servingUnit: currentServing.servingDescription,
    );

    ref.read(diaryNotifierProvider.notifier).addFood(foodToSave, widget.mealType);

    Navigator.of(context).pop();
    Navigator.of(context).pop();
  }
}