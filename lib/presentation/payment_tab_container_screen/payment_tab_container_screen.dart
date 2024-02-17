import 'models/payment_tab_container_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/dashboard_one_page/dashboard_one_page.dart';
import 'package:arest/presentation/payment_page/payment_page.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:arest/widgets/custom_bottom_bar.dart';
import 'package:arest/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/payment_tab_container_provider.dart';

class PaymentTabContainerScreen extends StatefulWidget {
  const PaymentTabContainerScreen({Key? key}) : super(key: key);

  @override
  PaymentTabContainerScreenState createState() =>
      PaymentTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PaymentTabContainerProvider(),
        child: PaymentTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class PaymentTabContainerScreenState extends State<PaymentTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 19.v),
                        _buildTabview(context),
                        SizedBox(
                            height: 552.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  PaymentPage.builder(context),
                                  PaymentPage.builder(context),
                                  PaymentPage.builder(context),
                                  PaymentPage.builder(context)
                                ]))
                      ])),
            ),
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
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 106.v,
        width: 389.h,
        child: TabBar(controller: tabviewController, isScrollable: true, tabs: [
          Tab(
              child: Column(children: [
            Container(
                height: 72.v,
                width: 85.h,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 23.v),
                decoration: AppDecoration.fillGray10001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: CustomImageView(
                    imagePath: ImageConstant.imgCash,
                    height: 24.v,
                    width: 23.h,
                    alignment: Alignment.bottomLeft)),
            Padding(
                padding: EdgeInsets.only(top: 3.v), child: Text("lbl_cash".tr))
          ])),
          Tab(
              child: Column(children: [
            Container(
                height: 72.v,
                width: 85.h,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
                decoration: AppDecoration.fillGray10001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: CustomImageView(
                    imagePath: ImageConstant.imgImage8,
                    height: 55.adaptSize,
                    width: 55.adaptSize,
                    alignment: Alignment.centerLeft)),
            Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text("lbl_khalti".tr))
          ])),
          Tab(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(
                    height: 79.v,
                    width: 86.h,
                    child: Stack(alignment: Alignment.topRight, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 72.v,
                          width: 85.h,
                          alignment: Alignment.bottomCenter),
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          decoration: IconButtonStyleHelper.outlineWhiteATL12,
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCheckmark))
                    ])),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 4.v),
                    child: Text("lbl_mastercard".tr))
              ])),
          Tab(
              child: Column(children: [
            Container(
                height: 72.v,
                width: 85.h,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 15.v),
                decoration: AppDecoration.fillGray10001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: CustomImageView(
                    imagePath: ImageConstant.imgImage9,
                    height: 41.adaptSize,
                    width: 41.adaptSize,
                    alignment: Alignment.center)),
            Padding(
                padding: EdgeInsets.only(top: 4.v), child: Text("lbl_esewa".tr))
          ]))
        ]));
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
