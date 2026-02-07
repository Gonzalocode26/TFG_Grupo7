import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';

class MacrosDiaryApp extends StatelessWidget {
  const MacrosDiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Macros Diary',
      theme: AppTheme.light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Macros Diary'),
        ),
        body: const Center(
          child: Text('App lista para empezar 🚀'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}