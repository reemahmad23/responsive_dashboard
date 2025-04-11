import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.imgBack, this.imgColor});

final String image;
final Color? imgBack, imgColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              height: 60,
              width: 60,
              decoration: ShapeDecoration(
                color: imgBack ?? Color(0xFFAFAFA),
                shape: OvalBorder(),
                ),
                
                  child: Center(
                    child: SvgPicture.asset(image,
                    colorFilter: ColorFilter.mode(imgColor ?? Color(0xFF4EB7F2), BlendMode.srcIn),),
                  ),
                ),
            ),
          ),
        ),
        
       // Expanded(child: SizedBox()),
            Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(Icons.arrow_back_ios_new_outlined,
            color: imgColor == null ? Color(0xFF064061) : Colors.white,
            ),),
      
      ],
    );
  }
}