import 'models/order_history_tab_container_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/dashboard_one_page/dashboard_one_page.dart';
import 'package:arest/presentation/ongoing_order_one_page/ongoing_order_one_page.dart';
import 'package:arest/presentation/order_history_one_page/order_history_one_page.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:arest/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'provider/order_history_tab_container_provider.dart';

class OrderHistoryTabContainerScreen extends StatefulWidget {
  const OrderHistoryTabContainerScreen({Key? key}) : super(key: key);

  @override
  OrderHistoryTabContainerScreenState createState() =>
      OrderHistoryTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => OrderHistoryTabContainerProvider(),
        child: OrderHistoryTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class OrderHistoryTabContainerScreenState
    extends State<OrderHistoryTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 24.v),
                    _buildTabview(context),
                    SizedBox(
                        height: 615.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              OngoingOrderOnePage.builder(context),
                              OrderHistoryOnePage.builder(context)
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
        height: 34.v,
        width: 375.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.primary,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Sen',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: appTheme.blueGray30002,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Sen',
                fontWeight: FontWeight.w400),
            indicatorColor: theme.colorScheme.primary,
            tabs: [
              Tab(child: Text("lbl_ongoing".tr)),
              Tab(child: Text("lbl_history".tr))
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
