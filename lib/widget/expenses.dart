import 'package:expenss_tracker/models/expense.dart';
import 'package:expenss_tracker/widget/chat/chart.dart';
import 'package:expenss_tracker/widget/expenses_list/expenses_list.dart';
import 'package:expenss_tracker/widget/new_expense.dart';
import 'package:flutter/material.dart';

class Expenss extends StatefulWidget {
  const Expenss({super.key});

  @override
  State<Expenss> createState() => _ExpenssState();
}

class _ExpenssState extends State<Expenss> {
  final List<Expense> _registerdExpenses = [
    Expense(
      title: 'Flutter course',
      amount: 500,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 150,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registerdExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registerdExpenses.indexOf(expense);
    setState(() {
      _registerdExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Expense removed'),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registerdExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    Widget mainContent = const Center(
      child: Text('No expenses found. Start adding some!'),
    );
    if (_registerdExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expense: _registerdExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ExpenseTracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: width < 600
          ? Column(
              children: [
                Chart(expense: _registerdExpenses),
                Expanded(child: mainContent),
              ],
            )
          : Row(
              children: [
                Expanded(
                  child: Chart(expense: _registerdExpenses),
                ),
                Expanded(child: mainContent),
              ],
            ),
    );
  }
}
