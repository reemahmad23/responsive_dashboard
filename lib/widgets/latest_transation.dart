import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 1),
          child: Text('Latest Transaction',
          style: AppStyle.styleMedium16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 1),
          child: LatestTransactionListView(),
        ),
      ],
    );
  }
}


class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView ({super.key});


static const items = [
  UserInfoModel(
    image: Assets.assetsImagesAvatar1, 
    title: 'Madrani Andi', 
    subTitle: 'Reem@gmail.com'),
    UserInfoModel(
    image: Assets.assetsImagesAvatar2, 
    title: 'Madrani Andi', 
    subTitle: 'Reem@gmail.com'),
    UserInfoModel(
    image: Assets.assetsImagesAvatar3, 
    title: 'Madrani Andi', 
    subTitle: 'Reem@gmail.com'),
];
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              userInfoModel: items[index],
              ),
          );
        }
      
      ),
    );
  }
}