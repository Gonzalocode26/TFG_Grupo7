import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'entities/diary_day.dart';
import 'entities/meal.dart';
import 'entities/food_item.dart';

/// Servicio singleton para manejar Isar DB
/// Equivalente a ModelContext de SwiftData
class IsarService {
  static final IsarService _instance = IsarService._internal();
  factory IsarService() => _instance;
  IsarService._internal();

  Isar? _isar;

  /// Inicializar la base de datos
  Future<Isar> init() async {
    if (_isar != null) return _isar!;

    // Obtener directorio de la app (donde guardar la DB)
    final dir = await getApplicationDocumentsDirectory();

    // Abrir Isar con los 3 schemas (tablas)
    _isar = await Isar.open(
      [DiaryDaySchema, MealSchema, FoodItemSchema],
      directory: dir.path,
    );

    print('✅ Isar inicializado en: ${dir.path}');
    return _isar!;
  }

  /// Getter para acceder a la DB
  Isar get db {
    if (_isar == null) {
      throw Exception('IsarService not initialized! Call init() first.');
    }
    return _isar!;
  }

  /// Cerrar la DB (útil al cerrar la app)
  Future<void> close() async {
    await _isar?.close();
    _isar = null;
  }
}