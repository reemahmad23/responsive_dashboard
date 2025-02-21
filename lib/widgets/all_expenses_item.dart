import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all__expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';
import 'package:responsive_dashboard/widgets/inactive_and_active_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel, required this.isSelected});

final AllExpensesItemModel itemModel;
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected ? InActiveAndAActiveExpensesItem(itemModel: itemModel) :
      ActiveExpensesItem(itemModel: itemModel)
    ;
  }
}
