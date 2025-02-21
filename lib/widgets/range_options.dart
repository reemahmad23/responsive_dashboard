
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12) ,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12)
        )
      ),
      child: Row(
        children: [
          Text('Monthly',
          style: AppStyle.styleMedium16,
          ),
          SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.57079633,
            child: Icon(Icons.arrow_back_ios_new_outlined,
            ),),
        ],
      ),
    );
  }
}