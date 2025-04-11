import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
          title: Text(transactionModel.title,
      style: AppStyle.styleSemiBold16(context),
      ),
      subtitle: Text(transactionModel.date,
      style: AppStyle.styleRegular14(context).copyWith(
        color: Color(0xFFA1A4B2),

      ),
    ),
    trailing: Text(transactionModel.amount,
    style: AppStyle.styleBold18(context).copyWith(
      color: transactionModel.isWithdraw ? Color(0xFFF3735E) : Color(0xFF7CD87A)
    ),
      ),
      )
      );
  }
}