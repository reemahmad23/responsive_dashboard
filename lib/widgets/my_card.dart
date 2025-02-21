import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard ({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.assetsImagesCardBackground)),
            color: Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, top: 16, right: 42),
            title: Text("Name Card",
            style: AppStyle.styleRegular16.copyWith(
              color: Colors.white,
            ),
            ),
            subtitle: Text('Marmar',
            style: AppStyle.styleMedium20.copyWith(
              color: Colors.white,
            ),),
            trailing: SvgPicture.asset(Assets.assetsImagesGallery),
            ),
            Expanded(child: SizedBox()),

            Padding(
              padding: const EdgeInsets.only(right: 48 - 24 ),
              child: Column(
                
                children: [
                  Text('0918 8124 0042 8129',
                  style: AppStyle.styleSemiBold24.copyWith(
                    color: Colors.white
                  ),),
                  Text('12/20 - 124',
                  style: AppStyle.styleRegular16.copyWith(
                    color: Colors.white),
                  ),
                  SizedBox(),
                ],
              ),
            ),
        ],),
      ),
    );
  }
}
