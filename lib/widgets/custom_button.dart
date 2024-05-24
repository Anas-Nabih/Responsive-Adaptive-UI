import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.labelStyle,
    this.backGroundColor,
    this.onTapped,
  });

  final String label;
  final TextStyle? labelStyle;
  final Color? backGroundColor;
  final Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTapped ?? () {},
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,

          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: backGroundColor ?? AppColors.activeColor,
          padding: EdgeInsets.all(20)),
      child: Text(
        label,
        style: labelStyle ??
            AppStyles.styleSemiBold18(context).copyWith(color: Colors.white),
      ),
    );
  }
}
