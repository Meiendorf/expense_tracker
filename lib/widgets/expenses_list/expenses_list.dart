import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  final void Function(Expense expense) onDismissed;

  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onDismissed,
  });

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        onDismissed: (direction) {
          onDismissed(expenses[index]);
        },
        child: ExpenseItem(expenses[index]),
      ),
    );
  }
}
