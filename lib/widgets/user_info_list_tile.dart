import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.title, required this.subTitle, required this.image});

  final String title, subTitle, image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardColor,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title:  Text(title, style: AppStyles.styleSemiBold16(context),),
        subtitle: Text(subTitle, style: AppStyles.styleRegular12(context),),
      ),
    );
  }
}