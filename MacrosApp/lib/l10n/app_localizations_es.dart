// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'MacrosDiary';

  @override
  String get diary => 'Diario';

  @override
  String get stats => 'Estadísticas';

  @override
  String get profile => 'Perfil';

  @override
  String get breakfast => 'Desayuno';

  @override
  String get lunch => 'Almuerzo';

  @override
  String get snack => 'Merienda';

  @override
  String get dinner => 'Cena';

  @override
  String get addFood => 'Añadir Alimento';

  @override
  String get noFoodsAddedYet => 'Aún no hay alimentos';

  @override
  String get search => 'Buscar';

  @override
  String get searchPlaceholder => 'Buscar alimentos...';

  @override
  String get noResults => 'No se encontraron resultados';

  @override
  String noResultsFor(String query) {
    return 'No se encontraron resultados para \"$query\"';
  }

  @override
  String get todaysProgress => 'Progreso de Hoy';

  @override
  String get left => 'restantes';

  @override
  String get protein => 'Proteína';

  @override
  String get carbs => 'Carbohidratos';

  @override
  String get fat => 'Grasa';

  @override
  String get calories => 'Calorías';

  @override
  String get servingSize => 'Porción';

  @override
  String get quantity => 'Cantidad';

  @override
  String addToMeal(String meal) {
    return 'AÑADIR AL $meal';
  }

  @override
  String get generic => 'Genérico';

  @override
  String get personalInformation => 'Información Personal';

  @override
  String get name => 'Nombre';

  @override
  String get age => 'Edad';

  @override
  String get height => 'Altura';

  @override
  String get weight => 'Peso';

  @override
  String get gender => 'Género';

  @override
  String get male => 'HOMBRE';

  @override
  String get female => 'MUJER';

  @override
  String get editPhysicalData => 'Edita tus datos físicos';

  @override
  String get energyTarget => 'Objetivo de Energía';

  @override
  String get dailyCalories => 'Calorías Diarias';

  @override
  String get macroTargets => 'Objetivo de Macros';

  @override
  String get activityLevel => 'Nivel de Actividad';

  @override
  String get sedentary => 'SEDENTARIO';

  @override
  String get lightlyActive => 'LIGERAMENTE ACTIVO';

  @override
  String get moderatelyActive => 'MODERADAMENTE ACTIVO';

  @override
  String get veryActive => 'MUY ACTIVO';

  @override
  String get extraActive => 'EXTRA ACTIVO';

  @override
  String get goal => 'Objetivo';

  @override
  String get weightLoss => 'PÉRDIDA DE PESO';

  @override
  String get maintenance => 'MANTENIMIENTO';

  @override
  String get muscleGain => 'GANANCIA MUSCULAR';

  @override
  String get dailyNutritionGoals => 'Objetivos Nutricionales Diarios';

  @override
  String get autoCalculateMacros => 'Calcular macros automáticamente';

  @override
  String get basedOnStats => 'Basado en tus estadísticas';

  @override
  String get editProfile => 'Editar Perfil';

  @override
  String get save => 'Guardar';

  @override
  String get close => 'Cerrar';

  @override
  String get profileUpdated => 'Perfil actualizado';

  @override
  String get history => 'Historial';

  @override
  String get noDataPeriod => 'No hay datos para este período';

  @override
  String get today => 'Hoy';

  @override
  String get clearFilter => 'Limpiar Filtro';

  @override
  String get delete => 'Eliminar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get errorLoading => 'Error al cargar datos';

  @override
  String get errorNetwork => 'Error de red. Verifica tu conexión.';

  @override
  String get retry => 'Reintentar';
}
