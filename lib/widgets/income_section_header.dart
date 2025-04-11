
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text('Income',
      style: AppStyle.styleSemiBold20(context),
      ),
      Container(
        padding: const EdgeInsets.symmetric( ),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
          ),
    
          child: Row(
            children: [
              Text('Monthly',
              style: AppStyle.styleMedium16(context),
              ),
              SizedBox(
                width: 16,
              ),
    
              Transform.rotate(
                angle: -1.57079633,
                child: const Icon(Icons.arrow_back_ios_new,
                ),
              ),
            ],
          ),
      )
    ],);
  }
}