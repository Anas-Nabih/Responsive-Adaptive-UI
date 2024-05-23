import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';
import 'package:responsive_adaptive_ui/widgets/adaptive_layout.dart';
import 'package:responsive_adaptive_ui/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_ui/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_adaptive_ui/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_adaptive_ui/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              leading: IconButton(
                  onPressed: () => scaffoldKey.currentState!.openDrawer(),
                  icon: Icon(Icons.menu)),
            )
          : null,
      backgroundColor: AppColors.scaffoldBGColor,
      drawer: MediaQuery.of(context).size.width < 800 ? CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const Padding(
          padding: EdgeInsets.only(top: 10),
          child: DashboardMobileLayout(),
        ),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
