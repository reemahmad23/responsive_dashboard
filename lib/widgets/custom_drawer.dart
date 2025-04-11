import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/active_and_in_active_model.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.assetsImagesAvatar3, title: 'Mahmoud', subTitle: 'Desouky'),),
          ),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 4,
              ),
            ),

            DrawerItemsListView(),
            
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [Expanded(
              child: SizedBox(
                
            ),
            ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Setting System', 
                      image: Assets.assetsImagesSettings),
                      ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Logout Account', 
                      image: Assets.assetsImagesLogout),
                      ),
                  
                      SizedBox(
                        height: 20,
                      ),
                ],
              ),
            ),   
                
            ]
        
      ),
    );
  }
}

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key, 
  });

  //final List<DrawerItemModel> items;

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
int activeIndex = 0;

final List<DrawerItemModel> items = [
  DrawerItemModel(title: 'Dashboard', image: Assets.assetsImagesDashboard),
  DrawerItemModel(title: 'My Transaction', image: Assets.assetsImagesMyTransactions),
  DrawerItemModel(title: 'Statistics', image: Assets.assetsImagesStatistics),
  DrawerItemModel(title: 'Wallet Account', image: Assets.assetsImagesWalletAccount),
  DrawerItemModel(title: 'My Investments', image: Assets.assetsImagesMyInvestments),
];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            if (activeIndex != index)
            setState(() {
              activeIndex = index;
            });
          } ,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index ,
              ),
          ),
        );
      });
  }
}