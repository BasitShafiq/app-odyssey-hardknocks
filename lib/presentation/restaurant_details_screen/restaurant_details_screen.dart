import '../restaurant_details_screen/widgets/dish4_item_widget.dart';
import 'models/dish4_item_model.dart';
import 'models/restaurant_details_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:arest/widgets/custom_icon_button.dart';
import 'package:arest/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'provider/restaurant_details_provider.dart';

class RestaurantDetailsScreen extends StatefulWidget {
  const RestaurantDetailsScreen({Key? key}) : super(key: key);

  @override
  RestaurantDetailsScreenState createState() => RestaurantDetailsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RestaurantDetailsProvider(),
        child: RestaurantDetailsScreen());
  }
}

class RestaurantDetailsScreenState extends State<RestaurantDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage5238x390,
                      height: 238.v,
                      width: 390.h),
                  SizedBox(height: 32.v),
                  SizedBox(
                      height: 607.v,
                      width: 374.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 16.h, bottom: 171.v),
                                child: Text("lbl_book_now".tr,
                                    style: CustomTextStyles
                                        .labelLargePoppinsWhiteA70002))),
                        Align(
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildRestaurantName(context),
                                  SizedBox(height: 2.v),
                                  _buildLinkedin(context),
                                  SizedBox(height: 18.v),
                                  Opacity(
                                      opacity: 0.8,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 21.h),
                                          child: Text("lbl_description".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack9000218))),
                                  SizedBox(height: 3.v),
                                  Opacity(
                                      opacity: 0.5,
                                      child: Container(
                                          width: 303.h,
                                          margin: EdgeInsets.only(
                                              left: 21.h, right: 48.h),
                                          child: Text(
                                              "msg_lorem_ipsum_dolor2".tr,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodySmallBlack90002_1
                                                  .copyWith(height: 1.40)))),
                                  SizedBox(height: 15.v),
                                  Opacity(
                                      opacity: 0.8,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 21.h),
                                          child: Text("lbl_facilities".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack90002_1))),
                                  SizedBox(height: 4.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 21.h, right: 58.h),
                                      child: Row(children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCheck,
                                                        height: 12.adaptSize,
                                                        width: 12.adaptSize,
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 2.v)),
                                                    Opacity(
                                                        opacity: 0.6,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5.h),
                                                            child: Text(
                                                                "lbl_snack_bar"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeManropeBlack90002Medium_1)))
                                                  ]),
                                                  SizedBox(height: 5.v),
                                                  Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCheck,
                                                        height: 12.adaptSize,
                                                        width: 12.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            bottom: 4.v)),
                                                    Opacity(
                                                        opacity: 0.6,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5.h),
                                                            child: Text(
                                                                "msg_bikes_and_car_parking"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeManropeBlack90002Medium_1)))
                                                  ])
                                                ])),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCheck,
                                                        height: 12.adaptSize,
                                                        width: 12.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            bottom: 4.v)),
                                                    Opacity(
                                                        opacity: 0.6,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5.h),
                                                            child: Text(
                                                                "lbl_toilet".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeManropeBlack90002Medium_1)))
                                                  ]),
                                                  SizedBox(height: 3.v),
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgCheck,
                                                            height:
                                                                12.adaptSize,
                                                            width: 12.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        6.v)),
                                                        Opacity(
                                                            opacity: 0.6,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 5
                                                                            .h),
                                                                child: Text(
                                                                    "msg_24_7_water_facility"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelLargeManropeBlack90002Medium_1)))
                                                      ])
                                                ]))
                                      ])),
                                  SizedBox(height: 16.v),
                                  _buildFrameEight(context),
                                  SizedBox(height: 16.v),
                                  _buildFrameNine(context)
                                ]))
                      ]))
                ])))));
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
  Widget _buildRestaurantName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 37.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Opacity(
              opacity: 0.7,
              child: Text("lbl_restaurant_name".tr,
                  style: CustomTextStyles.headlineSmallBlack90002)),
          Padding(
              padding: EdgeInsets.only(left: 24.h, top: 4.v, bottom: 12.v),
              child: CustomRatingBar(initialRating: 4, itemSize: 16))
        ]));
  }

  /// Section Widget
  Widget _buildLinkedin(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 37.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                    height: 13.v,
                    width: 10.h,
                    margin: EdgeInsets.only(bottom: 3.v)),
                Opacity(
                    opacity: 0.5,
                    child: Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: Text("msg_1_2_km_from_location".tr,
                            style: CustomTextStyles
                                .labelLargeManropeBlack90002Medium)))
              ])),
          Opacity(
              opacity: 0.8,
              child: InkWell(
                onTap: () {
                  NavigatorService.pushNamed(
                    AppRoutes.restaurantMapScreen,
                  );
                },
                child: Text("msg_view_on_google_maps".tr,
                    style: CustomTextStyles.bodySmallPurple700a2
                        .copyWith(decoration: TextDecoration.underline)),
              ))
        ]));
  }

  /// Section Widget
  Widget _buildFrameEight(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 21.h, right: 31.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(top: 4.v, bottom: 3.v),
                        child: Text("lbl_best_offers".tr,
                            style:
                                CustomTextStyles.titleLargeManropeBluegray800)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: CustomIconButton(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration:
                                IconButtonStyleHelper.outlineDeepOrangeC,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgFrame5)))
                  ]),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 9.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_see_all".tr,
                                style: CustomTextStyles.bodySmallNunitoTeal900),
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowRightTeal900,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(left: 4.h))
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildFrameNine(BuildContext context) {
    return Row(children: [
      GestureDetector(
          onTap: () {
            onTapViewAvailableTables(context);
          },
          child: SizedBox(
              height: 287.v,
              width: 374.h,
              child: Stack(alignment: Alignment.topLeft, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                        height: 287.v,
                        width: 168.h,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  margin:
                                      EdgeInsets.only(left: 33.h, right: 17.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.h, vertical: 22.v),
                                  decoration: AppDecoration.outlinePrimary
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder16),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 66.v),
                                        Text("lbl_food_1".tr,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .titleMediumBlack90002),
                                        SizedBox(height: 17.v),
                                        Text("lbl_some_details".tr,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .labelLargeManropeBluegray300),
                                        SizedBox(height: 12.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.h),
                                            child: _buildRs(context,
                                                rs: "lbl_rs".tr,
                                                amountText: "lbl_310".tr))
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                  height: 167.v,
                                  width: 168.h,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: 142.adaptSize,
                                                width: 142.adaptSize,
                                                margin: EdgeInsets.only(
                                                    top: 5.v, right: 5.h),
                                                decoration: BoxDecoration(
                                                    color: appTheme.whiteA70002,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            71.h)))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgPngegg1,
                                            height: 167.v,
                                            width: 168.h,
                                            alignment: Alignment.center)
                                      ])))
                        ]))),
                CustomElevatedButton(
                    width: 312.h,
                    text: "msg_view_available_tables".tr,
                    margin: EdgeInsets.only(left: 22.h, top: 59.v),
                    alignment: Alignment.topLeft),
                Align(
                    alignment: Alignment.centerRight,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(
                            left: 184.h, top: 26.v, bottom: 26.v),
                        child: IntrinsicWidth(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              SizedBox(
                                  height: 235.v,
                                  width: 124.h,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 11.h),
                                            child: _buildSeventeen(context,
                                                foodCounterText:
                                                    "lbl_food_2".tr,
                                                detailsText:
                                                    "lbl_some_details".tr,
                                                rs: "lbl_rs".tr,
                                                amountText: "lbl_285".tr)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: 124.adaptSize,
                                                width: 124.adaptSize,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.h,
                                                    vertical: 16.v),
                                                decoration: AppDecoration
                                                    .outlineBlueGrayC
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder62),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFavpngSalad1,
                                                    height: 90.v,
                                                    width: 97.h,
                                                    alignment:
                                                        Alignment.centerLeft)))
                                      ])),
                              Container(
                                  height: 235.v,
                                  width: 124.h,
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 11.h),
                                            child: _buildSeventeen(context,
                                                foodCounterText:
                                                    "lbl_food_3".tr,
                                                detailsText:
                                                    "lbl_some_details".tr,
                                                rs: "lbl_rs".tr,
                                                amountText: "lbl_285".tr)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: 124.adaptSize,
                                                width: 124.adaptSize,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 14.h,
                                                    vertical: 17.v),
                                                decoration: AppDecoration
                                                    .outlineBlueGrayC
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder62),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFavpngSaladMa,
                                                    height: 90.v,
                                                    width: 95.h,
                                                    alignment:
                                                        Alignment.center)))
                                      ]))
                            ]))))
              ]))),
      Expanded(
          child: SizedBox(
              height: 287.v,
              child: Consumer<RestaurantDetailsProvider>(
                  builder: (context, provider, child) {
                return ListView.separated(
                    padding:
                        EdgeInsets.only(left: 90.h, top: 26.v, bottom: 26.v),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount:
                        provider.restaurantDetailsModelObj.dish4ItemList.length,
                    itemBuilder: (context, index) {
                      Dish4ItemModel model = provider
                          .restaurantDetailsModelObj.dish4ItemList[index];
                      return Dish4ItemWidget(model);
                    });
              })))
    ]);
  }

  /// Common widget
  Widget _buildRs(
    BuildContext context, {
    required String rs,
    required String amountText,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 8.v),
          child: Text(rs,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelSmall!
                  .copyWith(color: theme.colorScheme.onError))),
      Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(amountText,
              style: CustomTextStyles.titleSmallPrimaryBold
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Common widget
  Widget _buildSeventeen(
    BuildContext context, {
    required String foodCounterText,
    required String detailsText,
    required String rs,
    required String amountText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 17.v),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 68.v),
          Text(foodCounterText,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeManrope
                  .copyWith(color: appTheme.black90002)),
          SizedBox(height: 11.v),
          Text(detailsText,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeManropeBluegray300
                  .copyWith(color: appTheme.blueGray300)),
          SizedBox(height: 9.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 8.v),
                            child: Text(rs,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.labelSmall!.copyWith(
                                    color: theme.colorScheme.onError))),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(amountText,
                                style: CustomTextStyles.titleSmallPrimaryBold
                                    .copyWith(
                                        color: theme.colorScheme.primary)))
                      ])))
        ]));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the foodOrderFoodDetailsScreen when the action is triggered.
  onTapViewAvailableTables(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tableReservationSelectedTabContainerScreen,
    );
  }
}
