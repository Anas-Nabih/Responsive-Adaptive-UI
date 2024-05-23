import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_ui/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_ui/widgets/header_with_dropdown_sahpe.dart';
import 'package:responsive_adaptive_ui/widgets/income_chart.dart';
import 'package:responsive_adaptive_ui/widgets/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWithDropDownShape(label: "Income"),
          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails())
            ],
          )),
        ],
      ),
    );
  }
}
