import 'models/dashboard_one_container_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/dashboard_one_page/dashboard_one_page.dart';
import 'package:arest/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'provider/dashboard_one_container_provider.dart';

class DashboardOneContainerScreen extends StatefulWidget {
  const DashboardOneContainerScreen({Key? key}) : super(key: key);

  @override
  DashboardOneContainerScreenState createState() =>
      DashboardOneContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DashboardOneContainerProvider(),
        child: DashboardOneContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class DashboardOneContainerScreenState
    extends State<DashboardOneContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.dashboardOnePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
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
}
