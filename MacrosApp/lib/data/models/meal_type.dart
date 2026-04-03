import 'package:flutter/material.dart';
import 'package:tfg_grupo7/l10n/app_localizations.dart';

enum MealType {
  breakfast,
  lunch,
  snack,
  dinner;

  String getDisplayName(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    switch (this) {
      case MealType.breakfast:
        return l10n.breakfast;
      case MealType.lunch:
        return l10n.lunch;
      case MealType.snack:
        return l10n.snack;
      case MealType.dinner:
        return l10n.dinner;
    }
  }
}