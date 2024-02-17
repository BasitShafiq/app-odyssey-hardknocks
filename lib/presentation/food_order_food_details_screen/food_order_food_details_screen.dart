import 'models/food_order_food_details_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:arest/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/food_order_food_details_provider.dart';

class FoodOrderFoodDetailsScreen extends StatefulWidget {
  const FoodOrderFoodDetailsScreen({Key? key}) : super(key: key);

  @override
  FoodOrderFoodDetailsScreenState createState() =>
      FoodOrderFoodDetailsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FoodOrderFoodDetailsProvider(),
        child: FoodOrderFoodDetailsScreen());
  }
}

class FoodOrderFoodDetailsScreenState
    extends State<FoodOrderFoodDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: SizeUtils.height,
                        width: double.maxFinite,
                        child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                      height: 459.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPhotoMenu,
                                                height: 459.v,
                                                width: 390.h,
                                                alignment: Alignment.center),
                                            _buildAppBar(context)
                                          ]))),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                      height: 475.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgFrame,
                                                height: 471.v,
                                                width: 390.h,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 34.h,
                                                        right: 61.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              width: 208.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right: 85
                                                                          .h),
                                                              child: Text(
                                                                  "msg_chicken_burger_promo"
                                                                      .tr,
                                                                  maxLines: 2,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineMedium!
                                                                      .copyWith(
                                                                          height:
                                                                              1.21))),
                                                          SizedBox(
                                                              height: 15.v),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          56.h),
                                                              child: Row(
                                                                  children: [
                                                                    SizedBox(
                                                                        width: 97
                                                                            .h,
                                                                        child: Row(
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgIconStar, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 3.v)),
                                                                              Padding(padding: EdgeInsets.only(left: 10.h), child: Text("lbl_4_8_rating".tr, style: CustomTextStyles.bodyMediumGray50001))
                                                                            ])),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgShoppingBag1,
                                                                        height: 20
                                                                            .adaptSize,
                                                                        width: 20
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                25.h)),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 7
                                                                                .h),
                                                                        child: Text(
                                                                            "lbl_2000_order"
                                                                                .tr,
                                                                            style:
                                                                                CustomTextStyles.bodyMediumGray50001))
                                                                  ])),
                                                          SizedBox(
                                                              height: 18.v),
                                                          Container(
                                                              width: 291.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 2
                                                                          .h),
                                                              child: Text(
                                                                  "msg_nulla_occaecat_velit"
                                                                      .tr,
                                                                  maxLines: 10,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumBlack90002
                                                                      .copyWith(
                                                                          height:
                                                                              1.81)))
                                                        ]))),
                                            CustomElevatedButton(
                                                width: 324.h,
                                                text: "lbl_add_to_cart".tr,
                                                margin: EdgeInsets.only(
                                                    bottom: 48.v),
                                                onPressed: () {
                                                  onTapAddToCart(context);
                                                },
                                                alignment:
                                                    Alignment.bottomCenter),
                                            _buildPopularRow(context)
                                          ])))
                            ]))))));
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
  Widget _buildPopularRow(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.fromLTRB(30.h, 62.v, 30.h, 376.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomElevatedButton(
                      height: 35.v,
                      width: 79.h,
                      text: "lbl_popular".tr,
                      buttonStyle: CustomButtonStyles.fillTeal,
                      buttonTextStyle:
                          CustomTextStyles.labelLargeManropeTeal900Medium),
                  Spacer(),
                  CustomIconButton(
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.fillTeal,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLinkedinTeal900)),
                  Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: CustomIconButton(
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          decoration: IconButtonStyleHelper.fillBlack,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgHeart)))
                ])));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the foodOrderOrderDetailsScreen when the action is triggered.
  onTapAddToCart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.foodOrderOrderDetailsScreen,
    );
  }
}
