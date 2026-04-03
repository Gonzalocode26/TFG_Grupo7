// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'MacrosDiary';

  @override
  String get diary => 'Diary';

  @override
  String get stats => 'Statistics';

  @override
  String get profile => 'Profile';

  @override
  String get breakfast => 'Breakfast';

  @override
  String get lunch => 'Lunch';

  @override
  String get snack => 'Snack';

  @override
  String get dinner => 'Dinner';

  @override
  String get addFood => 'Add Food';

  @override
  String get noFoodsAddedYet => 'No foods added yet';

  @override
  String get search => 'Search';

  @override
  String get searchPlaceholder => 'Search for food...';

  @override
  String get noResults => 'No results found';

  @override
  String noResultsFor(String query) {
    return 'No results found for \"$query\"';
  }

  @override
  String get todaysProgress => 'Today\'s Progress';

  @override
  String get left => 'left';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Fat';

  @override
  String get calories => 'Calories';

  @override
  String get servingSize => 'Serving Size';

  @override
  String get quantity => 'Quantity';

  @override
  String addToMeal(String meal) {
    return 'ADD TO $meal';
  }

  @override
  String get generic => 'Generic';

  @override
  String get personalInformation => 'Personal Information';

  @override
  String get name => 'Name';

  @override
  String get age => 'Age';

  @override
  String get height => 'Height';

  @override
  String get weight => 'Weight';

  @override
  String get gender => 'Gender';

  @override
  String get male => 'MALE';

  @override
  String get female => 'FEMALE';

  @override
  String get editPhysicalData => 'Edit your physical data';

  @override
  String get energyTarget => 'Energy Target';

  @override
  String get dailyCalories => 'Daily Calories';

  @override
  String get macroTargets => 'Macro Targets';

  @override
  String get activityLevel => 'Activity Level';

  @override
  String get sedentary => 'SEDENTARY';

  @override
  String get lightlyActive => 'LIGHTLY ACTIVE';

  @override
  String get moderatelyActive => 'MODERATELY ACTIVE';

  @override
  String get veryActive => 'VERY ACTIVE';

  @override
  String get extraActive => 'EXTRA ACTIVE';

  @override
  String get goal => 'Goal';

  @override
  String get weightLoss => 'WEIGHT LOSS';

  @override
  String get maintenance => 'MAINTENANCE';

  @override
  String get muscleGain => 'MUSCLE GAIN';

  @override
  String get dailyNutritionGoals => 'Daily Nutrition Goals';

  @override
  String get autoCalculateMacros => 'Auto-calculate macros';

  @override
  String get basedOnStats => 'Based on your stats and goals';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get save => 'Save';

  @override
  String get close => 'Close';

  @override
  String get profileUpdated => 'Profile updated successfully';

  @override
  String get history => 'History';

  @override
  String get noDataPeriod => 'No data for this period';

  @override
  String get today => 'Today';

  @override
  String get clearFilter => 'Clear Filter';

  @override
  String get delete => 'Delete';

  @override
  String get cancel => 'Cancel';

  @override
  String get errorLoading => 'Error loading data';

  @override
  String get errorNetwork => 'Network error. Please check your connection.';

  @override
  String get retry => 'Retry';
}
