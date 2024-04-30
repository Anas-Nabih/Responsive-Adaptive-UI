import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/drawer_item_model.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';
import 'package:responsive_adaptive_ui/widgets/drawer_footer_items.dart';
import 'package:responsive_adaptive_ui/widgets/drawer_item.dart';
import 'package:responsive_adaptive_ui/widgets/drawer_items_list_view.dart';
import 'package:responsive_adaptive_ui/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: UserInfoListTile(title: "User Name", subTitle: "user@gmail.com", image: Assets.imagesAvatar3)),
          SliverToBoxAdapter(child: SizedBox(height: 8,)),
          DrawerItemsListView(),
          DrawerFooterItems(),

        ],
      ),
    );
  }
}


