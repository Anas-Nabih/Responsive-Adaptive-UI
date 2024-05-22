import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_dot_indicator.dart';

class CustomPageViewIndicator extends StatelessWidget {
  const CustomPageViewIndicator({super.key, required this.activeIndex});

  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => CustomDotIndicator(
                isActive: index == activeIndex ? true : false,
              )),
    );
  }
}
