import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/expenses_model_item.dart';
import 'package:responsive_adaptive_ui/utils/app_colors.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';
import 'package:responsive_adaptive_ui/widgets/all_expenses_item_header.dart';

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final ExpensesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.activeColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            isSelected: isSelected,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(itemModel.title,
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: Colors.white)),
          SizedBox(height: 8),
          Text(itemModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: Color(0xfffafafa))),
          SizedBox(height: 16),
          Text("\$${itemModel.price}",
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final ExpensesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(color: Colors.grey.withOpacity(0.2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            isSelected: isSelected,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(itemModel.title, style: AppStyles.styleMedium16(context)),
          const SizedBox(
            height: 8,
          ),
          Text(itemModel.date, style: AppStyles.styleRegular14(context)),
          SizedBox(height: 16),
          Text("\$${itemModel.price}",
              style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}
