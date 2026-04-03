import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tfg_grupo7/l10n/app_localizations.dart'; // ← Import de traducciones
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
    final l10n = AppLocalizations.of(context)!; // ← Cargamos diccionario

    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: const BoxDecoration(
        color: Color(0xFFF2F2F7),
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
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
                  child: Text(l10n.close, style: const TextStyle(fontSize: 16, color: Colors.purple)), // ← Traducción
                ),
                Text(l10n.editProfile, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), // ← Traducción
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
                      _inputRow(l10n.name, _nameController, "", TextInputType.name), // ← Traducción
                      const Divider(height: 30),
                      _inputRow(l10n.age, _ageController, "", TextInputType.number), // ← Traducción
                      const Divider(height: 30),
                      _inputRow(l10n.weight, _weightController, "kg", const TextInputType.numberWithOptions(decimal: true)), // ← Traducción
                      const Divider(height: 30),
                      _inputRow(l10n.height, _heightController, "cm", const TextInputType.numberWithOptions(decimal: true)), // ← Traducción
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                Text(l10n.gender, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), // ← Traducción
                const SizedBox(height: 12),
                Row(
                  children: Gender.values.map((g) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: _ChipButton(
                      title: g.getDisplayName(context), // ← Usamos el método traducido
                      isSelected: _gender == g,
                      onTap: () => setState(() => _gender = g),
                    ),
                  )).toList(),
                ),
                const SizedBox(height: 24),

                Text(l10n.activityLevel, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), // ← Traducción
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: UserActivity.values.map((a) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: _ChipButton(
                        title: a.getDisplayName(context), // ← Usamos el método traducido
                        isSelected: _activity == a,
                        onTap: () => setState(() => _activity = a),
                      ),
                    )).toList(),
                  ),
                ),
                const SizedBox(height: 24),

                Text(l10n.goal, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), // ← Traducción
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: GoalType.values.map((g) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: _ChipButton(
                        title: g.getDisplayName(context), // ← Usamos el método traducido
                        isSelected: _goal == g,
                        onTap: () => setState(() => _goal = g),
                      ),
                    )).toList(),
                  ),
                ),
                const SizedBox(height: 32),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    ),
                    onPressed: _saveChanges,
                    child: Text(l10n.save, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)), // ← Traducción
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

    final updatedProfile = currentProfile.copyWith(
      name: _nameController.text,
      age: int.tryParse(_ageController.text) ?? 25,
      weight: double.tryParse(_weightController.text) ?? 70.0,
      height: double.tryParse(_heightController.text) ?? 175.0,
      gender: _gender,
      activityLevel: _activity,
      selectedGoal: _goal,
    );

    ref.read(profileNotifierProvider.notifier).updateField(updatedProfile);
    ref.read(profileNotifierProvider.notifier).recalculateMacros();
    ref.read(profileNotifierProvider.notifier).save();

    Navigator.pop(context);
  }
}

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