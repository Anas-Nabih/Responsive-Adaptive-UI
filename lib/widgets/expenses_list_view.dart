import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/expenses_model_item.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';
import 'package:responsive_adaptive_ui/widgets/expenses_item.dart';

class ExpensesListView extends StatefulWidget {
  const ExpensesListView({super.key});

  @override
  State<ExpensesListView> createState() => _ExpensesListViewState();
}

class _ExpensesListViewState extends State<ExpensesListView> {

  int selectedExpenses = 0;

  List<ExpensesItemModel> expensesList = [
    ExpensesItemModel(image: Assets.imagesBalance,  title: "Balance", date: "April 2022",price: 20.129),
    ExpensesItemModel(image: Assets.imagesBalance,  title: "Balance", date: "April 2022",price: 20.129),
    ExpensesItemModel(image: Assets.imagesBalance,  title: "Balance", date: "April 2022",price: 20.129),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: expensesList.asMap().entries.map((e) {
        final index = e.key;
        final item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if(selectedExpenses != index){
                updateIndex(index);
              }
            },
            child: Padding(
                padding: EdgeInsets.only(right: index == 2 ? 0 : index == 1 ? 6 : 12,left: index == 2 ? 6 :0),
                child: ExpensesItem(itemModel: item,activeExpenses: selectedExpenses == index,)),
          ),
        );
      }).toList(),
    );
  }

  updateIndex(int index){
    setState(() => selectedExpenses = index);
  }
}
