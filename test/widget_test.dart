// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pt1/app/app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('Click counter: 0'), findsOneWidget);
    expect(find.text('Click counter: 1'), findsNothing);

    await tester.tap(find.bySemanticsLabel("Add 1 to counter"));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Click counter: 0'), findsNothing);
    expect(find.text('Click counter: 1'), findsOneWidget);
  });

  testWidgets('Counter set smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('Click counter: 0'), findsOneWidget);
    expect(find.text('Click counter: 100'), findsNothing);

    final emailField = find.ancestor(
      of: find.text('Initial counter'),
      matching: find.byType(TextFormField),
    );
    await tester.enterText(emailField, "100");
    expect(find.text('100'), findsOneWidget);

    await tester.tap(find.bySemanticsLabel("Set counter"));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Click counter: 0'), findsNothing);
    expect(find.text('Click counter: 100'), findsOneWidget);
  });
}
