import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/profile_provider.dart';
import '../../../data/models/profile_models.dart';

class EditProfileSheet extends ConsumerStatefulWidget {
  const EditProfileSheet({super.key});

  @override
  ConsumerState<EditProfileSheet> createState() => _EditProfileSheetState();
}

class _EditProfileSheetState extends ConsumerState<EditProfileSheet> {
  late TextEditingController _nameController;
  late TextEditingController _ageController;
  late TextEditingController _weightController;
  late TextEditingController _heightController;

  late Gender _gender;
  late UserActivity _activity;
  late GoalType _goal;

  @override
  void initState() {
    super.initState();
    // Cargamos los datos actuales para pre-llenar el formulario
    final profile = ref.read(profileNotifierProvider).value!;

    _nameController = TextEditingController(text: profile.name);
    _ageController = TextEditingController(text: profile.age.toString());
    _weightController = TextEditingController(text: profile.weight.toStringAsFixed(1));
    _heightController = TextEditingController(text: profile.height.toStringAsFixed(1));

    _gender = profile.gender;
    _activity = profile.activityLevel;
    _goal = profile.selectedGoal;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _weightController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: const BoxDecoration(
        color: Color(0xFFF2F2F7),
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Barra superior con botón Close
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const BoxDecoration(
              color: Color(0xFFF2F2F7),
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close", style: TextStyle(fontSize: 16, color: Colors.purple)),
                ),
                const Text("Edit Profile", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(width: 60),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      _inputRow("Name", _nameController, "", TextInputType.name),
                      const Divider(height: 30),
                      _inputRow("Age", _ageController, "", TextInputType.number),
                      const Divider(height: 30),
                      _inputRow("Weight", _weightController, "kg", const TextInputType.numberWithOptions(decimal: true)),
                      const Divider(height: 30),
                      _inputRow("Height", _heightController, "cm", const TextInputType.numberWithOptions(decimal: true)),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Bloque 2: Género
                const Text("Gender", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 12),
                Row(
                  children: Gender.values.map((g) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: _ChipButton(
                      title: g.name.toUpperCase(), // Puedes usar g.displayName si lo añadiste al enum
                      isSelected: _gender == g,
                      onTap: () => setState(() => _gender = g),
                    ),
                  )).toList(),
                ),
                const SizedBox(height: 24),

                // Bloque 3: Nivel de Actividad
                const Text("Activity Level", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: UserActivity.values.map((a) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: _ChipButton(
                        title: a.name.replaceAll('Active', ' Active').toUpperCase(), // Formateo rápido
                        isSelected: _activity == a,
                        onTap: () => setState(() => _activity = a),
                      ),
                    )).toList(),
                  ),
                ),
                const SizedBox(height: 24),

                // Bloque 4: Meta
                const Text("Goal", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: GoalType.values.map((g) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: _ChipButton(
                        title: g.name.replaceAll('Loss', ' Loss').replaceAll('Gain', ' Gain').toUpperCase(),
                        isSelected: _goal == g,
                        onTap: () => setState(() => _goal = g),
                      ),
                    )).toList(),
                  ),
                ),
                const SizedBox(height: 32),

                // Botón Save
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    ),
                    onPressed: _saveChanges,
                    child: const Text("Save", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputRow(String title, TextEditingController controller, String unit, TextInputType keyboardType) {
    return Row(
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const Spacer(),
        Container(
          width: 80,
          height: 36,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            textAlign: TextAlign.right,
            textAlignVertical: TextAlignVertical.center,
            decoration: const InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            ),
          ),
        ),
        if (unit.isNotEmpty) ...[
          const SizedBox(width: 8),
          Text(unit, style: TextStyle(color: Colors.grey.shade500, fontSize: 14)),
        ]
      ],
    );
  }

  void _saveChanges() {
    final currentProfile = ref.read(profileNotifierProvider).value!;

    // 1. Actualizamos el estado con los nuevos valores del form
    final updatedProfile = currentProfile.copyWith(
      name: _nameController.text,
      age: int.tryParse(_ageController.text) ?? 25,
      weight: double.tryParse(_weightController.text) ?? 70.0,
      height: double.tryParse(_heightController.text) ?? 175.0,
      gender: _gender,
      activityLevel: _activity,
      selectedGoal: _goal,
    );

    // 2. Enviamos al provider
    ref.read(profileNotifierProvider.notifier).updateField(updatedProfile);

    // 3. Ejecutamos tus métodos de recálculo y guardado
    ref.read(profileNotifierProvider.notifier).recalculateMacros();
    ref.read(profileNotifierProvider.notifier).save();

    // 4. Cerramos el sheet
    Navigator.pop(context);
  }
}

// Recreación de tu ChipButton de SwiftUI
class _ChipButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const _ChipButton({required this.title, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.purple : Colors.grey.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}