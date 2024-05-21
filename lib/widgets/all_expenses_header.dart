import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/headline.dart';
 import 'package:responsive_adaptive_ui/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeadLine(label: "All Expenses",),
        const Spacer(),
        RangeOptions()
      ],
    );
  }
}


