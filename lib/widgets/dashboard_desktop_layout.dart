import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/all_expenses.dart';
import 'package:responsive_adaptive_ui/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_ui/widgets/quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: Column(
          children: [
            AllExpenses(),
            QuickInvoice(),
          ],
        ))
      ],
    );
  }
}
