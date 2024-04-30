import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/drawer_item_model.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';
import 'package:responsive_adaptive_ui/widgets/drawer_item.dart';

class DrawerFooterItems extends StatelessWidget {
  const DrawerFooterItems({super.key});

  static const List<DrawerItemModel> footerItems = [
    DrawerItemModel(image: Assets.imagesSettings, title: "Settings"),
    DrawerItemModel(image: Assets.imagesLogout, title: "Logout account")
  ];

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          Expanded(child: SizedBox()),
          DrawerItem(drawerItemModel: DrawerItemModel(image: Assets.imagesSettings, title: "Settings"), isActive: false),
          DrawerItem(drawerItemModel: DrawerItemModel(image: Assets.imagesLogout, title: "Logout account"), isActive: false),

          SizedBox(
            height: 48,
          )
         ],
      ),
    );
  }
}
