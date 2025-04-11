import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
static const items = [
    TransactionModel(
      title: 'Cash Withdrawal', 
      date: '13 Apr, 2022', 
      amount: r'$20, 129', 
      isWithdraw: true),

      TransactionModel(
      title: 'Landing Page Project', 
      date: '13 Apr, 2022', 
      amount: r'$20, 129', 
      isWithdraw: false),

      TransactionModel(
      title: 'Juni Mobile App Project', 
      date: '13 Apr, 2022', 
      amount: r'$20, 129', 
      isWithdraw: true),

];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  
  }
}