import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/transaction_history_header.dart';
import 'package:responsive_adaptive_ui/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        TransactionHistoryListView()
      ],
    );
  }
}
