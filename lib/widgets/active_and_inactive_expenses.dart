import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_ui/models/expenses_model_item.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';
import 'package:responsive_adaptive_ui/widgets/all_expenses_item_header.dart';

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.itemModel,
  });

  final ExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.activeColor),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.2),
                  maxRadius:
                  25,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(itemModel.image,color: Colors.white),
                  )),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          Text(itemModel.title,style: AppStyles.styleRegular14(context)),
          Text(itemModel.date,style: AppStyles.styleRegular14(context)),
          SizedBox(height: 20),
          Text("\$${itemModel.price}",style: AppStyles.styleRegular14(context)),
        ],
      ),
    );
  }
}

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.itemModel,
  });

  final ExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
      border: Border.all(color: Colors.grey.withOpacity(0.2))),
      child: Column(
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          Text(itemModel.title,style: AppStyles.styleRegular14(context)),
          Text(itemModel.date,style: AppStyles.styleRegular14(context)),
          SizedBox(height: 20),
          Text("\$${itemModel.price}",style: AppStyles.styleRegular14(context)),
        ],
      ),
    );
  }
}

