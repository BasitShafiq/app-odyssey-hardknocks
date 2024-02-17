import '../search_screen/widgets/foodlist_item_widget.dart';
import '../search_screen/widgets/restaurantlist_item_widget.dart';
import 'models/foodlist_item_model.dart';
import 'models/restaurantlist_item_model.dart';
import 'models/search_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:arest/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/search_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  SearchScreenState createState() => SearchScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SearchProvider(), child: SearchScreen());
  }
}

class SearchScreenState extends State<SearchScreen> {
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 24.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 31.h, right: 30.h),
                      child: Selector<SearchProvider, TextEditingController?>(
                          selector: (context, provider) =>
                              provider.searchController,
                          builder: (context, searchController, child) {
                            return CustomSearchView(
                                controller: searchController);
                          })),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Opacity(
                          opacity: 0.8,
                          child: Padding(
                              padding: EdgeInsets.only(left: 34.h),
                              child: Text("lbl_food".tr,
                                  style: CustomTextStyles
                                      .titleMediumBlack9000218)))),
                  _buildFoodList(context),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Opacity(
                          opacity: 0.8,
                          child: Padding(
                              padding: EdgeInsets.only(left: 34.h),
                              child: Text("lbl_restaurant".tr,
                                  style: CustomTextStyles
                                      .titleMediumBlack9000218)))),
                  _buildRestaurantList(context)
                ]))));
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
  Widget _buildFoodList(BuildContext context) {
    return SizedBox(
        height: 109.v,
        child: Consumer<SearchProvider>(builder: (context, provider, child) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 1.h);
              },
              itemCount: provider.searchModelObj.foodlistItemList.length,
              itemBuilder: (context, index) {
                FoodlistItemModel model =
                    provider.searchModelObj.foodlistItemList[index];
                return FoodlistItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildRestaurantList(BuildContext context) {
    return SizedBox(
        height: 165.v,
        child: Consumer<SearchProvider>(builder: (context, provider, child) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 1.h);
              },
              itemCount: provider.searchModelObj.restaurantlistItemList.length,
              itemBuilder: (context, index) {
                RestaurantlistItemModel model =
                    provider.searchModelObj.restaurantlistItemList[index];
                return RestaurantlistItemWidget(model);
              });
        }));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}
