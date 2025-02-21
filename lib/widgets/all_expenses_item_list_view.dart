import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all__expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {

    const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {

final items = [
  AllExpensesItemModel(
    image: Assets.assetsImagesBalance, 
    title: 'Balance', 
    date: 'Feb 2025', 
    price: r'$20,129'
    ),
    AllExpensesItemModel(
    image: Assets.assetsImagesIncome, 
    title: 'Income', 
    date: 'Feb 2025', 
    price: r'$20,129'
    ),
    AllExpensesItemModel(
    image: Assets.assetsImagesExpenses, 
    title: 'Expenses', 
    date: 'Feb 2025', 
    price: r'$20,129'
    ),
];


  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      
        //items.map((e) => AllExpensesItem(itemModel: e)).toList(),
        children: items.asMap().entries.map((e){
          int index = e.key;
          var item = e.value;

          if( index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: AllExpensesItem(itemModel: item, 
                isSelected: selectedIndex == index,),
                ),
              ),
            ); 
          }
            else {
              return Expanded(
                child: GestureDetector(
                  onTap: (){
                    updateIndex(index);
                  },
                  child: AllExpensesItem(itemModel: item, isSelected: selectedIndex == index,),
                ),
              );
            }
        }).toList(),
    );
  }

  void updateIndex(int index) {
setState(() {
  selectedIndex = index;
});
  } 
}