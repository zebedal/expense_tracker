import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/widgets.dart';

import '../../models/expense.dart';

class ExpensesList extends StatelessWidget {
  ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
    ));
  }
}
