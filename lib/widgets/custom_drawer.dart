import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/drawer_item_model.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';
import 'package:responsive_adaptive_ui/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  static const List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemModel(image: Assets.imagesDashboard, title: "My Transaction"),
    DrawerItemModel(image: Assets.imagesDashboard, title: "Statistics"),
    DrawerItemModel(image: Assets.imagesDashboard, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesDashboard, title: "My Investments"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(title: "User Name", subTitle: "user@gmail.com", image: Assets.imagesAvatar3),
          SizedBox(height: 8,),

        ],
      ),
    );
  }
}
