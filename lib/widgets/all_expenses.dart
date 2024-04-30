import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/all_expenses_header.dart';
import 'package:responsive_adaptive_ui/widgets/expenses_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 30),
          ExpensesListView()
        ],
      ),
    );
  }
}
