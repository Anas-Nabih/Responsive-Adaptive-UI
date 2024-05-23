import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_ui/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_adaptive_ui/widgets/income_section.dart';
import 'package:responsive_adaptive_ui/widgets/my_cards_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key, this.isFromMobileLayout = true,
  });

  final bool isFromMobileLayout;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: isFromMobileLayout ? 16 : 32),
        child: Column(
          children: [
            AllExpensesAndQuickInvoiceSection(),
            SizedBox(height: 32),
            MyCardsAndTransactionsHistory(),
            SizedBox(height: 32),
            IncomeSection(),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
