import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_page_view_indicator.dart';
import 'package:responsive_adaptive_ui/widgets/my_card_item.dart';

class MyCardsPageViewWithIndicator extends StatefulWidget {
  const MyCardsPageViewWithIndicator({super.key});

  @override
  State<MyCardsPageViewWithIndicator> createState() =>
      _MyCardsPageViewWithIndicatorState();
}

class _MyCardsPageViewWithIndicatorState
    extends State<MyCardsPageViewWithIndicator> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: pageController,
          children: List.generate(3, (index) => MyCardItem()),
        ),
        SizedBox(
          height: 20,
        ),
        CustomPageViewIndicator(
          activeIndex:currentPageIndex,
        )
      ],
    );
  }
}
