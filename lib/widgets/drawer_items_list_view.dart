import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/drawer_item_model.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';
import 'package:responsive_adaptive_ui/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemModel(image: Assets.imagesDashboard, title: "My Transaction"),
    DrawerItemModel(image: Assets.imagesDashboard, title: "Statistics"),
    DrawerItemModel(image: Assets.imagesDashboard, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesDashboard, title: "My Investments"),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() => activeIndex = index);
            }
          },
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: activeIndex == index,
          ),
        ),
        childCount: items.length,
      ),
    );
  }
}
