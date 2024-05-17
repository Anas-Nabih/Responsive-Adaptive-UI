import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.isSelected,
  });

  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: isSelected ? Colors.white.withOpacity(0.1):Color(0xfffafafa),
            shape: OvalBorder()
          ),
          child: Center(child: SvgPicture.asset(image,colorFilter:ColorFilter.mode( isSelected ? Colors.white:Color(0xff4eb7f2), BlendMode.srcIn),)),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: isSelected ? Colors.white: AppColors.navyBlue,
        )
      ],
    );
  }
}
