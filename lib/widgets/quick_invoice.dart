import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/latest_transaction.dart';
import 'package:responsive_adaptive_ui/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_ui/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        child: Column(
      children: [QuickInvoiceHeader(),LatestTransaction()],
    ));
  }
}
