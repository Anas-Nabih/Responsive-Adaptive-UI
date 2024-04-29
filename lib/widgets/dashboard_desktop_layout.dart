import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer())
      ],
    );
  }
}
