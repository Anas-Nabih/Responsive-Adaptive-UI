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
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) =>
            GestureDetector(
                onTap: () {
                  if(selectedExpenses != index){
                    setState(() => selectedExpenses = index);
                  }
                },
                child: ExpensesItem(itemModel: expensesList[index],activeExpenses: selectedExpenses == index,)),
      ),
    );
  }
}
