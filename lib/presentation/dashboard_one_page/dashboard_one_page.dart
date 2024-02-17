import '../dashboard_one_page/widgets/dish2_item_widget.dart';
import '../dashboard_one_page/widgets/restaurantinfo1_item_widget.dart';
import '../dashboard_one_page/widgets/restaurantinfo_item_widget.dart';
import 'models/dashboard_one_model.dart';
import 'models/dish2_item_model.dart';
import 'models/restaurantinfo1_item_model.dart';
import 'models/restaurantinfo_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:arest/widgets/custom_icon_button.dart';
import 'package:arest/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/dashboard_one_provider.dart';

class DashboardOnePage extends StatefulWidget {
  const DashboardOnePage({Key? key}) : super(key: key);

  @override
  DashboardOnePageState createState() => DashboardOnePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DashboardOneProvider(), child: DashboardOnePage());
  }
}

class DashboardOnePageState extends State<DashboardOnePage> {
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
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 24.v),
                    child: Column(children: [
                      _buildBuyNow(context),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.h),
                          child: Selector<DashboardOneProvider,
                                  TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.searchController,
                              builder: (context, searchController, child) {
                                return CustomSearchView(
                                    controller: searchController,
                                    hintText: "msg_search_for_food".tr);
                              })),
                      SizedBox(height: 18.v),
                      _buildFrameEight(context),
                      SizedBox(height: 16.v),
                      _buildFrameNine(context),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 32.h, right: 15.h),
                          child: _buildFrameSeven(context,
                              title: "msg_restaurants_nearby".tr,
                              seeAllText: "lbl_see_all".tr)),
                      SizedBox(height: 12.v),
                      _buildRestaurantInfo(context),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 32.h, right: 15.h),
                          child: _buildFrameSeven(context,
                              title: "msg_restaurants_nearby".tr,
                              seeAllText: "lbl_see_all".tr)),
                      SizedBox(height: 16.v),
                      _buildRestaurantInfo1(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: "assets/images/logo.jpeg",
            margin: EdgeInsets.only(
                left: 33.h, top: 63.v, bottom: 19.v, right: 20.v)),
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
  Widget _buildBuyNow(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapBuyNow(context);
        },
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Container(
                height: 150.v,
                width: 330.h,
                decoration: AppDecoration.gradientTealToTeal
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Stack(alignment: Alignment.centerLeft, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgSetHomemadeDe,
                      height: 150.v,
                      width: 216.h,
                      radius: BorderRadius.circular(8.h),
                      alignment: Alignment.centerRight),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 21.h, right: 181.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 127.h,
                                    child: Text("msg_special_offer_for".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleLargeManropeWhiteA70002
                                            .copyWith(height: 1.03))),
                                SizedBox(height: 6.v),
                                Container(
                                    width: 98.h,
                                    margin: EdgeInsets.only(left: 2.h),
                                    child: Text("msg_we_are_here_with".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .labelMediumManropeWhiteA70002
                                            .copyWith(height: 1.27))),
                                SizedBox(height: 8.v),
                                CustomElevatedButton(
                                    height: 27.v,
                                    width: 81.h,
                                    text: "lbl_buy_now".tr,
                                    buttonStyle: CustomButtonStyles.fillWhiteA,
                                    buttonTextStyle: CustomTextStyles
                                        .labelLargeManropeTeal900)
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildFrameEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 31.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 152.h,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(top: 4.v, bottom: 3.v),
                    child: Text("lbl_best_offers".tr,
                        style: CustomTextStyles.titleLargeManropeBluegray800)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.outlineDeepOrangeC,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFrame5)))
              ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 9.v),
              child: Text("lbl_see_all".tr,
                  style: CustomTextStyles.bodySmallNunitoTeal900)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightTeal900,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 4.h, top: 10.v, bottom: 10.v))
        ]));
  }

  /// Section Widget
  Widget _buildFrameNine(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrameNine(context);
        },
        child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                  height: 287.v,
                  width: 168.h,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    CustomImageView(
                        imagePath: "assets/images/logo.jpeg",
                        height: 167.v,
                        width: 168.h,
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            height: 282.v,
                            width: 142.h,
                            margin: EdgeInsets.only(right: 5.h),
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 12.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 19.h, vertical: 20.v),
                                          decoration: AppDecoration
                                              .outlinePrimary
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder16),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 65.v),
                                                Text("lbl_food_1".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack90002),
                                                SizedBox(height: 13.v),
                                                Text("lbl_some_details".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeManropeBluegray300),
                                                SizedBox(height: 9.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 3.h),
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      bottom:
                                                                          12.v),
                                                                  child: Text(
                                                                      "lbl_rs"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .labelMediumManropeOnError)),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 4
                                                                              .h),
                                                                  child: Text(
                                                                      "lbl_310"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleMediumPrimary))
                                                            ])))
                                              ]))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          height: 142.adaptSize,
                                          width: 142.adaptSize,
                                          decoration: BoxDecoration(
                                              color: appTheme.whiteA70002,
                                              borderRadius:
                                                  BorderRadius.circular(71.h))))
                                ])))
                  ])),
              Expanded(
                  child: SizedBox(
                      height: 287.v,
                      child: Consumer<DashboardOneProvider>(
                          builder: (context, provider, child) {
                        return ListView.separated(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 26.v, bottom: 26.v),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 16.h);
                            },
                            itemCount: provider
                                .dashboardOneModelObj.dish2ItemList.length,
                            itemBuilder: (context, index) {
                              Dish2ItemModel model = provider
                                  .dashboardOneModelObj.dish2ItemList[index];
                              return Dish2ItemWidget(model);
                            });
                      })))
            ])));
  }

  /// Section Widget
  Widget _buildRestaurantInfo(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 146.v,
            child: Consumer<DashboardOneProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 32.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20.h);
                  },
                  itemCount: provider
                      .dashboardOneModelObj.restaurantinfoItemList.length,
                  itemBuilder: (context, index) {
                    RestaurantinfoItemModel model = provider
                        .dashboardOneModelObj.restaurantinfoItemList[index];
                    return RestaurantinfoItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildRestaurantInfo1(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 146.v,
            child: Consumer<DashboardOneProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 32.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20.h);
                  },
                  itemCount: provider
                      .dashboardOneModelObj.restaurantinfo1ItemList.length,
                  itemBuilder: (context, index) {
                    Restaurantinfo1ItemModel model = provider
                        .dashboardOneModelObj.restaurantinfo1ItemList[index];
                    return Restaurantinfo1ItemWidget(model);
                  });
            })));
  }

  /// Common widget
  Widget _buildFrameSeven(
    BuildContext context, {
    required String title,
    required String seeAllText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(title,
          style: CustomTextStyles.titleLargeManropeBluegray800
              .copyWith(color: appTheme.blueGray800)),
      Spacer(),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 5.v),
          child: Text(seeAllText,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallNunitoGreenA700
                  .copyWith(color: appTheme.greenA700))),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRightGreenA700,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 4.h, top: 5.v, bottom: 5.v))
    ]);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the foodOrderFoodDetailsScreen when the action is triggered.
  onTapBuyNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.foodOrderFoodDetailsScreen,
    );
  }

  /// Navigates to the foodOrderFoodDetailsScreen when the action is triggered.
  onTapFrameNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.foodOrderFoodDetailsScreen,
    );
  }
}
