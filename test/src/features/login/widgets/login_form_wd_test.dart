import 'package:acda_mobile/src/config/config.dart';
import 'package:acda_mobile/src/features/login/utils/utils.dart';
import 'package:acda_mobile/src/features/login/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('[Login Form Widget]', () {
    testWidgets('Static Test', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: Scaffold(body: LoginFormWD()),
          ),
        ),
      );

      // Verify if the LoginFormWD widget is displayed.
      expect(find.byType(LoginFormWD), findsOneWidget);

      // Test if the title is displayed.
      expect(find.text(LoginFormMessages.title), findsOneWidget);

      // Verify there are 2 text form field
      expect(find.byWidgetPredicate((widget) => widget is TextField), findsWidgets);

      // Verify Hint Text
      expect(
        find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.hintText == 'Student ID'),
        findsOneWidget,
      );

      expect(
        find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.hintText == 'Password'),
        findsOneWidget,
      );

      // Verify Login Button
      expect(find.byType(ElevatedButton), findsOneWidget);

      final elevatedButton = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      final backgroundColor = elevatedButton.style?.backgroundColor?.resolve({});

      expect(backgroundColor, null);
    });

    testWidgets('User Interactions Test', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: Scaffold(body: LoginFormWD()),
          ),
        ),
      );

      await tester.enterText(
          find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.hintText == 'Student ID'),
          'u6388073');

      await tester.enterText(
          find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.hintText == 'Password'),
          '1111111');

      await tester.pump();

      expect(
        tester.widget<ElevatedButton>(find.byType(ElevatedButton)).style?.backgroundColor?.resolve({}),
        DesignSystem.g8,
      );
    });
  });
}
