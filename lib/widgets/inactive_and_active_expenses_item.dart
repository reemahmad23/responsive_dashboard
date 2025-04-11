
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all__expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class InActiveAndAActiveExpensesItem extends StatelessWidget {
  const InActiveAndAActiveExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1, 
            color:  Color(0xFFF1F1F1),
            ),
      borderRadius: BorderRadius.circular(12),
      ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        AllExpensesItemHeader(
          imgBack: Colors.white.withOpacity(0.1000000149011612),
          imgColor: Colors.white,
          image: itemModel.image
          ),
    
          SizedBox(
            height: 4,
          ),
    
        Text(
          itemModel.title,
          style: AppStyle.styleMedium16(context).copyWith(
            color: Colors.white
          ),
        ),
        SizedBox(height: 8,),
        Text(
          itemModel.date,
          style: AppStyle.styleRegular14(context).copyWith(
            color: Color(0xFFFAFAFA)
          ),
        ),
        SizedBox(height: 16,),
        Text(
          itemModel.price,
          style: AppStyle.styleSemiBold24(context).copyWith(
            color: Colors.white
          ),
        ),
      ],
      ),
    );
  }
}



class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1, 
            color:  Color(0xFFF1F1F1),
            ),
      borderRadius: BorderRadius.circular(12),
      ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        AllExpensesItemHeader(
          image: itemModel.image
          ),
    
          SizedBox(
            height: 34,
          ),
    
        Text(
          itemModel.title,
          style: AppStyle.styleMedium16(context),
        ),
        SizedBox(height: 8,),
        Text(
          itemModel.date,
          style: AppStyle.styleRegular14(context),
        ),
        SizedBox(height: 16,),
        Text(
          itemModel.price,
          style: AppStyle.styleSemiBold24(context),
        ),
      ],
      ),
    );
  }
}