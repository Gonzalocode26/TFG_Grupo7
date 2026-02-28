enum Gender {
  male,
  female;

  String get displayName {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
    }
  }
}

enum UserActivity {
  sedentary(1.2, 'Sedentary'),
  lightlyActive(1.375, 'Lightly Active'),
  moderatelyActive(1.55, 'Moderately Active'),
  veryActive(1.725, 'Very Active'),
  extraActive(1.9, 'Extra Active');

  final double multiplier;
  final String displayName;

  const UserActivity(this.multiplier, this.displayName);
}

enum GoalType {
  weightLoss(0.85, 'Weight Loss'),
  maintenance(1.0, 'Maintenance'),
  weightGain(1.10, 'Weight Gain');

  final double factor;
  final String displayName;

  const GoalType(this.factor, this.displayName);
}