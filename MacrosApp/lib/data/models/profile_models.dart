import 'package:flutter/material.dart';
import 'package:tfg_grupo7/l10n/app_localizations.dart';

enum Gender {
  male,
  female;

  String getDisplayName(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (this) {
      case Gender.male:
        return l10n.male;
      case Gender.female:
        return l10n.female;
    }
  }
}

enum UserActivity {
  sedentary(1.2),
  lightlyActive(1.375),
  moderatelyActive(1.55),
  veryActive(1.725),
  extraActive(1.9);

  final double multiplier;

  const UserActivity(this.multiplier);

  String getDisplayName(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (this) {
      case UserActivity.sedentary:
        return l10n.sedentary;
      case UserActivity.lightlyActive:
        return l10n.lightlyActive;
      case UserActivity.moderatelyActive:
        return l10n.moderatelyActive;
      case UserActivity.veryActive:
        return l10n.veryActive;
      case UserActivity.extraActive:
        return l10n.extraActive;
    }
  }
}

enum GoalType {
  weightLoss(0.85),
  maintenance(1.0),
  weightGain(1.10);

  final double factor;

  const GoalType(this.factor);

  String getDisplayName(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (this) {
      case GoalType.weightLoss:
        return l10n.weightLoss;
      case GoalType.maintenance:
        return l10n.maintenance;
      case GoalType.weightGain:
        return l10n.muscleGain;
    }
  }
}