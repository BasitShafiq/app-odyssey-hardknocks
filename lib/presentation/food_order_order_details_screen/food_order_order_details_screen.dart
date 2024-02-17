import 'package:velocity_x/velocity_x.dart';

import '../food_order_order_details_screen/widgets/menulist_item_widget.dart';
import 'models/food_order_order_details_model.dart';
import 'models/menulist_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/food_order_order_details_provider.dart';

class FoodOrderOrderDetailsScreen extends StatefulWidget {
  const FoodOrderOrderDetailsScreen({Key? key}) : super(key: key);

  @override
  FoodOrderOrderDetailsScreenState createState() =>
      FoodOrderOrderDetailsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FoodOrderOrderDetailsProvider(),
        child: FoodOrderOrderDetailsScreen());
  }
}

class FoodOrderOrderDetailsScreenState
    extends State<FoodOrderOrderDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        height: 524.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 26.h, top: 110.v),
                                  child: Text("lbl_order_details".tr,
                                      style: CustomTextStyles
                                          .headlineMediumBlack90002))),
                          _buildAppBar(context),
                          _buildMenuList(context)
                        ])),
                    SizedBox(height: 67.v),
                    _buildPriceInfo(context),
                    SizedBox(height: 5.v)
                  ])),
            )));
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
  Widget _buildMenuList(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Consumer<FoodOrderOrderDetailsProvider>(
                builder: (context, provider, child) {
              return ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              (context.screenHeight * 0.02).heightBox,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    ImageConstant.imgSetHomemadeDe,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.fill,
                                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                                  10.widthBox,
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          "Chicken Burger"
                                              .text
                                              .size(15)
                                              .color(Colors.black)
                                              .bold
                                              .make(),
                                        ],
                                      ),
                                      5.heightBox,
                                      "Hot & Spicy"
                                          .text
                                          .size(10)
                                          .color(
                                              Color.fromARGB(255, 53, 128, 19))
                                          .semiBold
                                          .make(),
                                      5.heightBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          "Rs 290"
                                              .text
                                              .size(20)
                                              .color(Color.fromARGB(
                                                  255, 53, 52, 52))
                                              .bold
                                              .make(),
                                          40.widthBox,
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                      size: 30,
                                                    )
                                                        .box
                                                        .color(Colors.green)
                                                        .roundedFull
                                                        .make()),
                                                "03".text.bold.size(14).make(),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 30,
                                                    )
                                                        .box
                                                        .color(Colors.green)
                                                        .roundedFull
                                                        .make()),
                                              ]),
                                          10.heightBox,
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              20.heightBox,
                            ],
                          )
                              .box
                              .white
                              .margin(const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10))
                              .rounded
                              .shadow
                              .padding(const EdgeInsets.all(10))
                              .make()
                              .onTap(() {}),
                        ],
                      ),
                    ],
                  );
                },
              );
            })));
  }

  /// Section Widget
  Widget _buildPriceInfo(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.teal900,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Container(
            height: 214.v,
            width: 360.h,
            decoration: AppDecoration.outlineIndigoA20011
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroupWhiteA70002,
                  height: 214.v,
                  width: 359.h,
                  radius: BorderRadius.circular(7.h),
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h, right: 10.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Padding(
                            padding: EdgeInsets.only(left: 17.h, right: 13.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_sub_total".tr,
                                                style: CustomTextStyles
                                                    .titleSmallWhiteA70001Medium),
                                            SizedBox(height: 3.v),
                                            Text("lbl_delivery_charge".tr,
                                                style: CustomTextStyles
                                                    .titleSmallWhiteA70001Medium),
                                            Text("lbl_discount".tr,
                                                style: CustomTextStyles
                                                    .titleSmallWhiteA70001Medium),
                                            SizedBox(height: 15.v),
                                            Text("lbl_total".tr,
                                                style: CustomTextStyles
                                                    .titleMediumWhiteA70001)
                                          ])),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text("lbl_rs_950".tr,
                                            style: CustomTextStyles
                                                .titleSmallWhiteA70001Medium),
                                        SizedBox(height: 1.v),
                                        Text("lbl_rs_50".tr,
                                            style: CustomTextStyles
                                                .titleSmallWhiteA70001Medium),
                                        SizedBox(height: 1.v),
                                        Text("lbl_rs_0".tr,
                                            style: CustomTextStyles
                                                .titleSmallWhiteA70001Medium),
                                        SizedBox(height: 17.v),
                                        Text("lbl_rs_1_000".tr,
                                            style: CustomTextStyles
                                                .titleMediumWhiteA70001)
                                      ])
                                ])),
                        SizedBox(height: 20.v),
                        CustomElevatedButton(
                            text: "lbl_place_my_order".tr,
                            buttonStyle: CustomButtonStyles.fillWhiteATL7,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumTeal900ExtraBold,
                            onPressed: () {
                              onTapPlaceMyOrder(context);
                            })
                      ])))
            ])));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the foodOrderCompleteScreen when the action is triggered.
  onTapPlaceMyOrder(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentTabContainerScreen,
    );
  }
}
