import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';
import 'package:responsive_adaptive_ui/widgets/headline.dart';
import 'package:responsive_adaptive_ui/widgets/my_cards_page_view.dart';

class MayCardsSection extends StatelessWidget {
  const MayCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadLine(
          label: "My Cards",
          style: AppStyles.styleSemiBold20(context),
        ),
        SizedBox(
          height: 20,
        ),
        MyCardsPageViewWithIndicator(),
      ],
    );
  }
}
