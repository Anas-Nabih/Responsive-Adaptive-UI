import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_divider.dart';
import 'package:responsive_adaptive_ui/widgets/my_cards_section.dart';
import 'package:responsive_adaptive_ui/widgets/transaction_history.dart';

class MyCardsAndTransactionsHistory extends StatelessWidget {
  const MyCardsAndTransactionsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MayCardsSection(),
        CustomDivider(height: 40),
        TransactionHistory()
      ],
    );
  }
}
