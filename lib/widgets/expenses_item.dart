import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/expenses_model_item.dart';
import 'package:responsive_adaptive_ui/widgets/active_and_inactive_expenses.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(
      {super.key, required this.itemModel, required this.activeExpenses});

  final ExpensesItemModel itemModel;
  final bool activeExpenses;

  @override
  Widget build(BuildContext context) {
    return activeExpenses
        ? ActiveExpensesItem(itemModel: itemModel)
        : InActiveExpensesItem(itemModel: itemModel);
  }
}
