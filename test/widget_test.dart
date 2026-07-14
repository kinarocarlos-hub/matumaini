import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:matumaini/main.dart';
import 'package:matumaini/screens/main_shell.dart';

void main() {
  testWidgets('App launches without fatal error', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MatumainiApp(),
      ),
    );

    expect(tester.takeException(), isNull);
    expect(find.byType(MainShell), findsOneWidget);
  });
}
