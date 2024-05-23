import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_ui/widgets/income_section.dart';
import 'package:responsive_adaptive_ui/widgets/my_cards_and_transaction_history.dart';

class CardsAndTransactionAndIncomeSection extends StatelessWidget {
  const CardsAndTransactionAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(child: MyCardsAndTransactionsHistory()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(child: IncomeSection())
      ],
    );
  }
}
