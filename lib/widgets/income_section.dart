import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_ui/utils/size_config.dart';
import 'package:responsive_adaptive_ui/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_ui/widgets/detailed_income_chart.dart';
import 'package:responsive_adaptive_ui/widgets/header_with_dropdown_sahpe.dart';
import 'package:responsive_adaptive_ui/widgets/income_chart.dart';
import 'package:responsive_adaptive_ui/widgets/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWithDropDownShape(label: "Income"),
          width <= 1390 && width > SizeConfig.desktopBreakPoint? DetailedIncomeChart() :Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          ),
        ],
      ),
    );
  }
}
