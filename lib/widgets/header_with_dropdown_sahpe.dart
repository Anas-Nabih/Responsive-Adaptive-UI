import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/headline.dart';
 import 'package:responsive_adaptive_ui/widgets/range_options.dart';

class HeaderWithDropDownShape extends StatelessWidget {
  const HeaderWithDropDownShape({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeadLine(label: label,),
        const Spacer(),
        RangeOptions()
      ],
    );
  }
}


