import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.2))),
      child: Row(
        children: [
          Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          SizedBox(width: 12),
          Icon(
            Icons.keyboard_arrow_down_outlined,
            color: AppColors.navyBlue,
          )
        ],
      ),
    );
  }
}
