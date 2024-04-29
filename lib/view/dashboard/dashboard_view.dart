import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/adaptive_layout.dart';
import 'package:responsive_adaptive_ui/widgets/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) =>  const SizedBox(),
        desktopLayout: (context) => DashBoardDesktopLayout(),
      ),
    );
  }
}
