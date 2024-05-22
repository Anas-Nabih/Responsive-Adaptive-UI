import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';
import 'package:responsive_adaptive_ui/widgets/headline.dart';
import 'package:responsive_adaptive_ui/widgets/latest_transaction_list_view.dart';
import 'package:responsive_adaptive_ui/widgets/quick_invoice_form.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        HeadLine(
          label: "Latest Transition",
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          height: 10,
        ),
        LatestTransactionListView(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForm(),
      ],
    );
  }
}
