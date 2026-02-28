import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tfg_grupo7/app.dart';

void main() {
  testWidgets('App renders correctly smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
        const ProviderScope(
          child: MacrosDiaryApp(),
        )
    );
    expect(find.text('Macros Diary'), findsOneWidget);
    expect(find.text('App lista para empezar 🚀'), findsOneWidget);
  });
}