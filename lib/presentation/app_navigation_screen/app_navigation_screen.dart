import 'models/app_navigation_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Start".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.startScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard One - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dashboardOneContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Restaurant Search".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.restaurantSearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Restaurant Details ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.restaurantDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Food Order / Food Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.foodOrderFoodDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Food Order / Order Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.foodOrderOrderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Food Order / Complete".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.foodOrderCompleteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "View in ARestro Mode".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.viewInArestroModeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Restaurant Map Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.restaurantMapThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Table Reservation/ Selected - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .tableReservationSelectedTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Table Reservation/ Successful".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.tableReservationSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Restaurant Map".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.restaurantMapScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Restaurant Map One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.restaurantMapOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Restaurant Map Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.restaurantMapTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "All view Food One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.allViewFoodOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "All view Food".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.allViewFoodScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "All view Restaurant".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.allViewRestaurantScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Card One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCardOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order History - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.orderHistoryTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Table Reservation/ Successful One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.tableReservationSuccessfulOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCardScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
