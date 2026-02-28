import 'package:flutter/material.dart';

enum StatType {
  calories,
  protein,
  carbs,
  fat;

  String get displayName {
    switch (this) {
      case StatType.calories:
        return 'Calories';
      case StatType.protein:
        return 'Protein';
      case StatType.carbs:
        return 'Carbs';
      case StatType.fat:
        return 'Fat';
    }
  }

  Color get color {
    switch (this) {
      case StatType.calories:
        return Colors.purple;
      case StatType.protein:
        return Colors.red;
      case StatType.carbs:
        return Colors.blue;
      case StatType.fat:
        return Colors.yellow;
    }
  }
}