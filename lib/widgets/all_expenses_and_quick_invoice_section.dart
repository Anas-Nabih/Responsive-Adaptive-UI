import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/all_expenses.dart';
import 'package:responsive_adaptive_ui/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 30,),),
        SliverToBoxAdapter(child: AllExpenses()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(child: QuickInvoice()),
      ],
    );
  }
}
