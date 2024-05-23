import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/user_info_model.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';
import 'package:responsive_adaptive_ui/widgets/drawer_footer_items.dart';
import 'package:responsive_adaptive_ui/widgets/drawer_items_list_view.dart';
import 'package:responsive_adaptive_ui/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: UserInfoListTile(
                user:UserInfoModel(avatar: Assets.imagesAvatar3,name:"User Name",email: "user@gmail.com")
                  )),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 8,
          )),
          DrawerItemsListView(),
          DrawerFooterItems(),
        ],
      ),
    );
  }
}
