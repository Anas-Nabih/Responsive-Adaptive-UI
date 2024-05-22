import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';
import 'package:responsive_adaptive_ui/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_ui/widgets/custom_button.dart';
import 'package:responsive_adaptive_ui/widgets/custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomTextFieldWithLabel(
              label: "Custom Name",
              hint: "Type Custom Name",
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomTextFieldWithLabel(
              label: "Custom Email",
              hint: "Type Custom Email",
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Flexible(
                child: CustomTextFieldWithLabel(
              label: "Item Amount",
              hint: "Amount by USD",
            )),
            SizedBox(
              width: 32,
            ),
            Flexible(
                child: CustomTextFieldWithLabel(
              label: "Item Name",
              hint: "Type item Name",
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [

            Expanded(
              child: CustomButton(
                backGroundColor: Colors.transparent,
                label: "Add More Details",
                labelStyle: AppStyles.styleSemiBold18(context)
                    .copyWith(color: AppColors.activeColor),
              ),
            ),
            SizedBox(
              width: 32,
            ),
            Expanded(
              child: CustomButton(
                label: "Send Money",
              ),
            ),
          ],
        )
      ],
    );
  }
}
