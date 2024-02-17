import 'models/restaurant_map_two_model.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/dashboard_one_page/dashboard_one_page.dart';import 'package:arest/widgets/app_bar/appbar_leading_image.dart';import 'package:arest/widgets/app_bar/appbar_title_image.dart';import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';import 'package:arest/widgets/app_bar/custom_app_bar.dart';import 'package:arest/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';import 'provider/restaurant_map_two_provider.dart';class RestaurantMapTwoScreen extends StatefulWidget {const RestaurantMapTwoScreen({Key? key}) : super(key: key);

@override RestaurantMapTwoScreenState createState() =>  RestaurantMapTwoScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => RestaurantMapTwoProvider(), child: RestaurantMapTwoScreen()); } 
 }

// ignore_for_file: must_be_immutable
class RestaurantMapTwoScreenState extends State<RestaurantMapTwoScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 27.v), child: Column(children: [_buildAboutARestro(context), SizedBox(height: 8.v), _buildFeedback(context), SizedBox(height: 8.v), _buildTermAndCondition(context), SizedBox(height: 8.v), _buildPrivacyPolicy(context), SizedBox(height: 8.v), _buildFaqs(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgMegaphone, margin: EdgeInsets.only(left: 33.h, top: 63.v, bottom: 19.v)), centerTitle: true, title: Padding(padding: EdgeInsets.only(top: 56.v, bottom: 13.v), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgLock, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 5.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_ar".tr, style: CustomTextStyles.titleLargeff009944), TextSpan(text: "lbl_estro".tr, style: CustomTextStyles.titleLargeff004422)]), textAlign: TextAlign.left))])), actions: [AppbarTrailingCircleimage(imagePath: ImageConstant.imgEllipse4, margin: EdgeInsets.fromLTRB(34.h, 56.v, 34.h, 12.v), onTap: () {onTapCircleImage(context);})], styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildAboutARestro(BuildContext context) { return Container(width: 322.h, margin: EdgeInsets.only(right: 4.h), padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 9.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), Text("lbl_about_arestro".tr, style: CustomTextStyles.bodyMediumBlack90002Light)])); } 
/// Section Widget
Widget _buildFeedback(BuildContext context) { return Container(width: 322.h, margin: EdgeInsets.only(right: 4.h), padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 9.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), Text("lbl_feedback".tr, style: CustomTextStyles.bodyMediumBlack90002Light)])); } 
/// Section Widget
Widget _buildTermAndCondition(BuildContext context) { return Container(width: 322.h, margin: EdgeInsets.only(right: 4.h), padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 9.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), Text("msg_terms_and_conditions".tr, style: CustomTextStyles.bodyMediumBlack90002Light)])); } 
/// Section Widget
Widget _buildPrivacyPolicy(BuildContext context) { return Container(width: 322.h, margin: EdgeInsets.only(right: 4.h), padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 8.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 4.v), Text("lbl_privacy_policy".tr, style: CustomTextStyles.bodyMediumBlack90002Light)])); } 
/// Section Widget
Widget _buildFaqs(BuildContext context) { return Container(width: 322.h, margin: EdgeInsets.only(right: 4.h), padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 10.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Text("lbl_faqs".tr, style: CustomTextStyles.bodyMediumBlack90002Light)); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Search: return "/"; case BottomBarEnum.Cart: return AppRoutes.dashboardOnePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.dashboardOnePage: return DashboardOnePage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the profileScreen when the action is triggered.
onTapCircleImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileScreen, ); } 
 }
