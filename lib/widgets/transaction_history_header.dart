import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transaction History",style: AppStyles.styleSemiBold20(context),),
        Text("See All",style: AppStyles.styleMedium16(context).copyWith(color: Color(0XFF4EB7F2)),),
      ],
    );
  }
}