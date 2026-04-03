import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tfg_grupo7/l10n/app_localizations.dart';
import 'core/theme/app_theme.dart';
import 'presentation/screens/main_screen.dart';  // ← Nuevo import

class MacrosDiaryApp extends StatelessWidget {
  const MacrosDiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Macros Diary',
      theme: AppTheme.light,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
      ],
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}