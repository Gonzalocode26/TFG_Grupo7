import 'package:flutter/material.dart';
import 'data/remote/services/fat_secret_food_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('API Test')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              print('🔍 Iniciando búsqueda...');

              final service = FatSecretFoodService();
              final results = await service.searchFood('chicken');

              print('✅ Encontrados: ${results.length} alimentos');
              for (var food in results.take(5)) {
                print('  📦 ${food.foodName}');
              }
            },
            child: const Text('PROBAR API'),
          ),
        ),
      ),
    );
  }
}