import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:visible_test/widget/maintain_semantics_text.dart';

void main() {
  testWidgets('Test maintain_semantics_text', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: MaintainSemanticsText(
        text: 'Semantics!',
      ),
    ));
    expect(find.bySemanticsLabel('Semantics!'), findsOneWidget);
  });
}
