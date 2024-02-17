import '../all_view_restaurant_screen/widgets/restaurantlist1_item_widget.dart';
import '../all_view_restaurant_screen/widgets/restaurantprofile_item_widget.dart';
import 'models/all_view_restaurant_model.dart';
import 'models/restaurantlist1_item_model.dart';
import 'models/restaurantprofile_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/dashboard_one_page/dashboard_one_page.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:arest/widgets/custom_bottom_bar.dart';
import 'package:arest/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/all_view_restaurant_provider.dart';

class AllViewRestaurantScreen extends StatefulWidget {
  const AllViewRestaurantScreen({Key? key}) : super(key: key);

  @override
  AllViewRestaurantScreenState createState() => AllViewRestaurantScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AllViewRestaurantProvider(),
        child: AllViewRestaurantScreen());
  }
}

// ignore_for_file: must_be_immutable
class AllViewRestaurantScreenState extends State<AllViewRestaurantScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 23.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.h),
                                child: Selector<AllViewRestaurantProvider,
                                        TextEditingController?>(
                                    selector: (context, provider) =>
                                        provider.searchController,
                                    builder:
                                        (context, searchController, child) {
                                      return CustomSearchView(
                                          controller: searchController,
                                          hintText: "msg_search_for_food".tr,
                                          alignment: Alignment.center);
                                    }))),
                        SizedBox(height: 27.v),
                        Padding(
                            padding: EdgeInsets.only(left: 40.h),
                            child: Text("msg_popular_restaurants".tr,
                                style:
                                    CustomTextStyles.headlineSmallBluegray800)),
                        SizedBox(height: 6.v),
                        _buildRestaurantList(context),
                        SizedBox(height: 18.v),
                        Padding(
                            padding: EdgeInsets.only(left: 40.h),
                            child: Text("msg_restaurants_nearby".tr,
                                style:
                                    CustomTextStyles.headlineSmallBluegray800)),
                        SizedBox(height: 16.v),
                        _buildRestaurantProfile(context)
                      ])))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMegaphone,
            margin: EdgeInsets.only(left: 33.h, top: 63.v, bottom: 19.v)),
        centerTitle: true,
        title: Padding(
            padding: EdgeInsets.only(top: 56.v, bottom: 13.v),
            child: Row(children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgLock,
                  margin: EdgeInsets.only(bottom: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_ar".tr,
                            style: CustomTextStyles.titleLargeff009944),
                        TextSpan(
                            text: "lbl_estro".tr,
                            style: CustomTextStyles.titleLargeff004422)
                      ]),
                      textAlign: TextAlign.left))
            ])),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse4,
              margin: EdgeInsets.fromLTRB(34.h, 56.v, 34.h, 12.v),
              onTap: () {
                onTapCircleImage(context);
              })
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildRestaurantList(BuildContext context) {
    return SizedBox(
        height: 165.v,
        child: Consumer<AllViewRestaurantProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 1.h);
              },
              itemCount: provider
                  .allViewRestaurantModelObj.restaurantlist1ItemList.length,
              itemBuilder: (context, index) {
                Restaurantlist1ItemModel model = provider
                    .allViewRestaurantModelObj.restaurantlist1ItemList[index];
                return InkWell(
                    onTap: () {
                      NavigatorService.pushNamed(
                        AppRoutes.restaurantDetailsScreen,
                      );
                    },
                    child: Restaurantlist1ItemWidget(model));
              });
        }));
  }

  /// Section Widget
  Widget _buildRestaurantProfile(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 32.h, right: 36.h),
            child: Consumer<AllViewRestaurantProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 25.v);
                  },
                  itemCount: provider.allViewRestaurantModelObj
                      .restaurantprofileItemList.length,
                  itemBuilder: (context, index) {
                    RestaurantprofileItemModel model = provider
                        .allViewRestaurantModelObj
                        .restaurantprofileItemList[index];
                    return InkWell(
                        onTap: () {
                          NavigatorService.pushNamed(
                            AppRoutes.restaurantDetailsScreen,
                          );
                        },
                        child: RestaurantprofileItemWidget(model));
                  });
            })));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Cart:
        return AppRoutes.dashboardOnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.dashboardOnePage:
        return DashboardOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}
