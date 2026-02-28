import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../data/local/database/entities/meal.dart';
import '../../../../data/local/database/entities/food_item.dart';

class MealCard extends StatelessWidget {
  final Meal meal;
  final VoidCallback onAddTapped;
  final Function(FoodItem) onDelete;

  const MealCard({
    super.key,
    required this.meal,
    required this.onAddTapped,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header del meal
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              meal.type.displayName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Lista de alimentos
          if (meal.foods.isEmpty)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'No foods added yet',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            )
          else
            ...meal.foods.map((food) => _buildFoodRow(context, food)),

          // Botón Add Food
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: onAddTapped,
                icon: const Icon(Icons.add),
                label: const Text('Add Food'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9C27B0),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodRow(BuildContext context, FoodItem food) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade200,
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          // Imagen o icono
          _buildFoodImage(food),
          const SizedBox(width: 12),

          // Nombre del alimento
          Expanded(
            child: Text(
              food.name,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),

          // Calorías
          Text(
            '${food.calories.toInt()} kcal',
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 13,
            ),
          ),
          const SizedBox(width: 8),

          // Botón eliminar
          IconButton(
            onPressed: () => onDelete(food),
            icon: const Icon(Icons.delete_outline),
            color: Colors.red,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodImage(FoodItem food) {
    if (food.photo != null && food.photo!.isNotEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: food.photo!,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            width: 50,
            height: 50,
            color: Colors.grey.shade200,
            child: const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
          errorWidget: (context, url, error) => _buildIconFallback(food),
        ),
      );
    }
    return _buildIconFallback(food);
  }

  Widget _buildIconFallback(FoodItem food) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF9C27B0).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        _getIconData(food.iconName),
        color: const Color(0xFF9C27B0),
        size: 24,
      ),
    );
  }

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'drop.fill':
        return Icons.water_drop;
      case 'fork.knife':
        return Icons.restaurant;
      case 'carrot.fill':
      default:
        return Icons.restaurant_menu;
    }
  }
}