import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.2),
            shape: OvalBorder()
          ),
          child: SvgPicture.asset(image),
        ),
        // CircleAvatar(
        //     backgroundColor: Colors.grey.withOpacity(0.2),
        //     maxRadius: 25,
        //     child: Padding(
        //       padding: const EdgeInsets.all(5),
        //       child: SvgPicture.asset(image),
        //     )),
        Icon(
          Icons.arrow_forward_ios,
          color: AppColors.navyBlue,
        )
      ],
    );
  }
}
