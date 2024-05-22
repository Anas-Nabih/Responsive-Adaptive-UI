import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/transaction_model.dart';
import 'package:responsive_adaptive_ui/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({
    super.key,
  });

  static const List<TransactionModel> transactionsHistoryList = [
    TransactionModel("Cash Withdrawal", "13 Apr, 2022", "\$20,129", true),
    TransactionModel("Landing Page Project", "13 Apr, 2022", "\$20,129", false),
    TransactionModel("Juni Mobile App Project", "13 Apr, 2022", "\$20,129", false),
   ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          shrinkWrap: true,
          itemCount:transactionsHistoryList.length,
          itemBuilder: (context, index) => TransactionItem(item: transactionsHistoryList[index]),
        );
  }
}
