import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';
import 'package:responsive_adaptive_ui/widgets/headline.dart';

class CustomTextFieldWithLabel extends StatelessWidget {
  const CustomTextFieldWithLabel({super.key,required this.label, required this.hint});

  final String label, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadLine(label: label,style: AppStyles.styleMedium16(context),),
        SizedBox(height: 12,),
        TextField(
          decoration: InputDecoration(
            fillColor: AppColors.cardColor,
            filled: true,
            hintText: hint,
            hintStyle: AppStyles.styleRegular16(context).copyWith(color: Color(0xffAAAAAA)),
            border: buildTextFiledBorderStyle(),
            enabledBorder: buildTextFiledBorderStyle(),
            focusedBorder: buildTextFiledBorderStyle(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildTextFiledBorderStyle() {
    return OutlineInputBorder(
            borderRadius: BorderRadius. circular(12),
            borderSide: BorderSide(
              color: Colors.transparent/*AppColors.cardColor*/
            )
          );
  }
}
