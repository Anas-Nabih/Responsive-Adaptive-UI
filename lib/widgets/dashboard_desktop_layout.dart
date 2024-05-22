import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_adaptive_ui/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_ui/widgets/my_cards_and_transaction_history.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(width: 24),
        Expanded(
            child: Container(
          color: Colors.white,
          child: MyCardsAndTransactionsHistory(),
        ))
      ],
    );
  }
}
