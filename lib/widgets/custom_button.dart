import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';
import 'package:responsive_adaptive_ui/widgets/custom_background_container.dart';

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
    return GestureDetector(
      onTap: onTapped ?? () {},
      child: SizedBox(
        height: 62,
        child: CustomBackGroundContainer(
            color: backGroundColor ?? AppColors.activeColor,
            child: Center(
              child: Text(
                label,
                style: labelStyle ??
                    AppStyles.styleSemiBold18(context)
                        .copyWith(color: Colors.white),
              ),
            )),
      ),
    );
  }
}
