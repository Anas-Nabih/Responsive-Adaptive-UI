import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/header_with_dropdown_sahpe.dart';
import 'package:responsive_adaptive_ui/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_ui/widgets/expenses_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          HeaderWithDropDownShape(label: "All Expenses",),
          SizedBox(height: 16),
          ExpensesListView()
        ],
      ),
    );
  }
}


