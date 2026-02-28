import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'presentation/screens/main_screen.dart';  // ← Nuevo import

class MacrosDiaryApp extends StatelessWidget {
  const MacrosDiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Macros Diary',
      theme: AppTheme.light,
      home: const MainScreen(),  // ← Cambiar aquí
      debugShowCheckedModeBanner: false,
    );
  }
}