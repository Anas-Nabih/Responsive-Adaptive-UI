import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';
import 'package:responsive_adaptive_ui/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        RangeOptions()
      ],
    );
  }
}
