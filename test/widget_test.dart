import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:multiplatform_app_crud/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget); // Periksa teks "0" ada di dalam widget
    expect(find.text('1'), findsNothing); // Periksa teks "1" tidak ada di dalam widget

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing); // Setelah di-tap, teks "0" tidak lagi ada
    expect(find.text('1'), findsOneWidget); // Setelah di-tap, teks "1" muncul
  });
}
