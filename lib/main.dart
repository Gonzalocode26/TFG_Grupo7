import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'data/local/database/isar_service.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await IsarService().init();

  runApp(
    const ProviderScope(
      child: MacrosDiaryApp(),
    ),
  );
}