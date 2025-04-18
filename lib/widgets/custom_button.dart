import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor, });

final Color? backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0xFF4DB7F2),
        ),
        onPressed: () {},
        child:  Text('Send Money',
        style: AppStyle.styleBold18(context).copyWith(color: textColor),
        
        ),
      ),
    );
  }
}