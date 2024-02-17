import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchOnprimary,
      activeIcon: ImageConstant.imgSearchOnprimary,
      title: "lbl_search".tr,
      type: BottomBarEnum.Search,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCart,
      activeIcon: ImageConstant.imgNavCart,
      title: "lbl_cart".tr,
      type: BottomBarEnum.Cart,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA70002,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.02),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          if (bottomMenuList[index].isCircle) {
            return BottomNavigationBarItem(
              icon: Container(
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        color: appTheme.teal900,
                        margin: EdgeInsets.only(top: 17.v),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15.v),
                        child: Text(
                          bottomMenuList[index].title ?? "",
                          style: CustomTextStyles
                              .labelMediumManropeBlack90002Bold
                              .copyWith(
                            color: appTheme.teal900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            );
          }
          return BottomNavigationBarItem(
            icon: Container(
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.teal900,
                    margin: EdgeInsets.only(top: 15.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 14.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style:
                          CustomTextStyles.labelMediumManropeTeal900.copyWith(
                        color: appTheme.teal900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: Container(
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 24.v,
                    width: 27.h,
                    margin: EdgeInsets.only(top: 15.v),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: bottomMenuList[index].activeIcon,
                          height: 22.v,
                          width: 23.h,
                          color: appTheme.gray600,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            right: 4.h,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(
                              left: 14.h,
                              bottom: 12.v,
                            ),
                            decoration: AppDecoration.outlineWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Text(
                              "lbl_7".tr,
                              style:
                                  CustomTextStyles.labelSmallManropeWhiteA70002,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 1.v,
                        bottom: 15.v,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.labelMediumManropeBlack90002Bold
                            .copyWith(
                          color: appTheme.black90002.withOpacity(0.53),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          if (selectedIndex == 0) {
            NavigatorService.pushNamed(
              AppRoutes.dashboardScreen,
            );
          } else if (selectedIndex == 1) {
            NavigatorService.pushNamed(
              AppRoutes.searchScreen,
            );
          } else {
            NavigatorService.pushNamed(
              AppRoutes.foodOrderOrderDetailsScreen,
            );
          }
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Search,
  Cart,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isCircle = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
