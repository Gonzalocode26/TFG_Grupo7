class FoodDetails {
  final String id;
  final String name;
  final double calories;
  final double protein;
  final double fat;
  final double carbs;
  final double servingSize;
  final String servingUnit;
  final String? photoURL;

  FoodDetails({
    required this.id,
    required this.name,
    required this.calories,
    required this.protein,
    required this.fat,
    required this.carbs,
    required this.servingSize,
    required this.servingUnit,
    this.photoURL,
});
}