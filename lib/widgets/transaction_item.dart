import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/transaction_model.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.item});

  final TransactionModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardColor,
      elevation: 0,
      child: Center(
        child: ListTile(
          title: Text(item.title,style: AppStyles.styleBold16(context),),
          subtitle: Text(item.subtitle,style: AppStyles.styleRegular16(context).copyWith(color: Color(0xFFAAAAAA))),
          trailing: Text(item.amount,style: AppStyles.styleSemiBold20(context).copyWith(
            color: item.isWithdrawal ?Color(0XFFF3735E)  : Color(0xFF7CD87A)
          )),
        ),
      ),
    );
  }
}
