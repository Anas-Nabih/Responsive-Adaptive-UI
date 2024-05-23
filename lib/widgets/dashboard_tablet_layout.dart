import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_ui/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: const DashboardMobileLayout(isFromMobileLayout: false,),
        )),
      ],
    );
  }
}
