import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/income_details_item_model.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeDetailsItemModel> incomeDetails = [
    IncomeDetailsItemModel(
        color: Color(0XFF2088C7), title: "Design Services", value: "40%"),
    IncomeDetailsItemModel(
        color: Color(0XFF4DB7F2), title: "Design Product", value: "25%"),
    IncomeDetailsItemModel(
        color: Color(0XFF064060), title: "Product royalti", value: "20%"),
    IncomeDetailsItemModel(
        color: Color(0XFFE2DECD), title: "Other", value: "22%"),
  ];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
        itemCount: incomeDetails.length,
        itemBuilder: (context, index) =>
            IncomeDetailsItem(item: incomeDetails[index]));
  }
}

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.item});

  final IncomeDetailsItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(shape: OvalBorder(), color: item.color),
      ),
      title: Text(
        item.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        item.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
