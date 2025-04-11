import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(),
        width: isActive ? 32 :0,
        height: 8,
        decoration: ShapeDecoration(
          color: isActive ? Color(0xFF4DB7F2) : const Color(0xFFE7E7E7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      
    );
  }
}