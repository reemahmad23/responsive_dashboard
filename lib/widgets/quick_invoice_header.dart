
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice',
        style: AppStyle.styleSemiBold20,
        ),

        Spacer(),

        Container(
          height: 48,
          width: 48,
          decoration: ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Icon(Icons.add,
          color: Color(0xff4EB7F2),
          ))
      ],
    );
  }
}