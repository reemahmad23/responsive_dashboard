
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses',
        style: AppStyle.styleSemiBold20(context),
        ),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}
