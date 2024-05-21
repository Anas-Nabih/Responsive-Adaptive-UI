import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/user_info_model.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';
 import 'package:responsive_adaptive_ui/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });

  static const transactionList = [
    UserInfoModel(
        avatar: Assets.imagesAvatar3, name: "user", email: "user@gmail.com"),
    UserInfoModel(
        avatar: Assets.imagesAvatar2,
        name: "User Name",
        email: "user.name@gmail.com"),
    UserInfoModel(
        avatar: Assets.imagesAvatar1, name: "Name", email: "name@gmail.com"),
    UserInfoModel(
        avatar: Assets.imagesAvatar3,
        name: "First Name",
        email: "firstname@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: transactionList.map((e) => IntrinsicWidth(
          child: UserInfoListTile(
            user: e,
          ),
        )).toList(),
      ),
    );

      SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: transactionList.length,
        itemBuilder: (context, index) => IntrinsicWidth(
          child: UserInfoListTile(
            user: transactionList[index],
          ),
        ),
      ),
    );
  }
}
