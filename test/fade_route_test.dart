import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/widgets/fade_route.dart';

void main() {
  testWidgets('FadeRoute 정상 동작 테스트', (WidgetTester tester) async {
    const testKey = Key('test');
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => ElevatedButton(
            key: testKey,
            onPressed: () {
              Navigator.of(context).push(FadeRoute(page: const Text('Next')));
            },
            child: const Text('Go'),
          ),
        ),
      ),
    );

    await tester.tap(find.byKey(testKey));
    await tester.pumpAndSettle();

    expect(find.text('Next'), findsOneWidget);
  });
}
