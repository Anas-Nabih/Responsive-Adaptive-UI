import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isActive ? 32 :8,height: 8,
      margin: EdgeInsets.only(right: 6),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        color:isActive ? AppColors.activeColor: AppColors.inActiveDotColor,
      ),
    );
  }
}
