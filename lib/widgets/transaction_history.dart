import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/transaction_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 5,),
        // Text('13 April 2022',
        // style: AppStyle.styleMedium16,),
        SizedBox(height: 4,),
        TransactionListView(),

      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text('Transaction History',
        style: AppStyle.styleSemiBold16(context),
        ),
        Spacer(),
        Text('See all',
        style: AppStyle.styleMedium16(context), 
        ),
        ],
      );
    }
}