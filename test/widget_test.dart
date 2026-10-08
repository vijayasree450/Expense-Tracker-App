import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:expenss_tracker/widget/expenses.dart';
import 'package:expenss_tracker/widget/new_expense.dart';

void main() {
  testWidgets('Expenses tap add icon opens NewExpense sheet', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Expenss()));
    expect(find.byIcon(Icons.add), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    expect(find.byType(NewExpense), findsOneWidget);
    expect(find.text('Save Expense'), findsOneWidget);
  });
}
