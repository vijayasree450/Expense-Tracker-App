import 'package:expenss_tracker/models/expense.dart';
import 'package:expenss_tracker/widget/expenses_list/expenses_items.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expense,
    required this.onRemoveExpense,
  });

  final List<Expense> expense;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expense[index].id),
        background: Container(
          color: Theme.of(context).colorScheme.error.withValues(alpha: 0.75),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin?.horizontal ?? 16,
          ),
        ),
        onDismissed: (direction) {
          onRemoveExpense(expense[index]);
        },
        child: ExpensesItems(expense: expense[index]),
      ),
    );
  }
}
