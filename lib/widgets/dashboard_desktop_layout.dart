import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_adaptive_ui/widgets/cards_and_transaction_and_income.dart';
import 'package:responsive_adaptive_ui/widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30,bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: AllExpensesAndQuickInvoiceSection(),
                  ),
                  SizedBox(width: 24),
                  Expanded(child: CardsAndTransactionAndIncomeSection())
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
