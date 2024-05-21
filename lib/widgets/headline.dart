import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({super.key, required this.label, this.style});

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: style ?? AppStyles.styleSemiBold20(context),
    );
  }
}
