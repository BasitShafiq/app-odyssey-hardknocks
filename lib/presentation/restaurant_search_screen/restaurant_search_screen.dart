import '../restaurant_search_screen/widgets/restaurantcardlist1_item_widget.dart';import '../restaurant_search_screen/widgets/restaurantcardlist2_item_widget.dart';import 'models/restaurant_search_model.dart';import 'models/restaurantcardlist1_item_model.dart';import 'models/restaurantcardlist2_item_model.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/dashboard_one_page/dashboard_one_page.dart';import 'package:arest/widgets/app_bar/appbar_leading_image.dart';import 'package:arest/widgets/app_bar/appbar_title_image.dart';import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';import 'package:arest/widgets/app_bar/custom_app_bar.dart';import 'package:arest/widgets/custom_bottom_bar.dart';import 'package:arest/widgets/custom_elevated_button.dart';import 'package:arest/widgets/custom_search_view.dart';import 'package:flutter/material.dart';import 'provider/restaurant_search_provider.dart';class RestaurantSearchScreen extends StatefulWidget {const RestaurantSearchScreen({Key? key}) : super(key: key);

@override RestaurantSearchScreenState createState() =>  RestaurantSearchScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => RestaurantSearchProvider(), child: RestaurantSearchScreen()); } 
 }

// ignore_for_file: must_be_immutable
class RestaurantSearchScreenState extends State<RestaurantSearchScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 9.v), Expanded(child: SingleChildScrollView(child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h), child: Column(children: [_buildFrame(context), SizedBox(height: 36.v), _buildPopularRestaurants(context), SizedBox(height: 8.v), _buildRestaurantCardList1(context), SizedBox(height: 12.v), Align(alignment: Alignment.centerLeft, child: Opacity(opacity: 0.7, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("msg_recent_discoveries".tr, style: CustomTextStyles.titleLargeManropeBlack90002)))), SizedBox(height: 11.v), _buildRestaurantCardList2(context)]))))])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgMegaphone, margin: EdgeInsets.only(left: 33.h, top: 63.v, bottom: 19.v)), centerTitle: true, title: Padding(padding: EdgeInsets.only(top: 56.v, bottom: 13.v), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgLock, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 5.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_ar".tr, style: CustomTextStyles.titleLargeff009944), TextSpan(text: "lbl_estro".tr, style: CustomTextStyles.titleLargeff004422)]), textAlign: TextAlign.left))])), actions: [AppbarTrailingCircleimage(imagePath: ImageConstant.imgEllipse4, margin: EdgeInsets.fromLTRB(34.h, 56.v, 34.h, 12.v), onTap: () {onTapCircleImage(context);})], styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 9.v), decoration: AppDecoration.outlineBlack900021.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 20.v), Align(alignment: Alignment.centerLeft, child: Opacity(opacity: 0.8, child: Text("msg_find_a_restaurant".tr, style: CustomTextStyles.titleMediumBlack90002_1))), SizedBox(height: 13.v), Selector<RestaurantSearchProvider, TextEditingController?>(selector: (context, provider) => provider.searchController, builder: (context, searchController, child) {return CustomSearchView(controller: searchController, hintText: "msg_search_for_restaurant".tr, hintStyle: CustomTextStyles.bodySmallBlack90002_2);}), SizedBox(height: 16.v), CustomElevatedButton(height: 34.v, text: "lbl_search".tr, buttonTextStyle: CustomTextStyles.titleSmallWhiteA70002), SizedBox(height: 27.v), Align(alignment: Alignment.centerRight, child: Opacity(opacity: 0.5, child: GestureDetector(onTap: () {onTapTxtAdvancedSearch(context);}, child: Text("lbl_advanced_search".tr, style: CustomTextStyles.labelLargeManropeBlack90002Medium.copyWith(decoration: TextDecoration.underline)))))])); } 
/// Section Widget
Widget _buildPopularRestaurants(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Opacity(opacity: 0.7, child: Text("msg_popular_restaurants".tr, style: CustomTextStyles.titleLargeManropeBlack90002)), Padding(padding: EdgeInsets.only(top: 8.v, bottom: 5.v), child: Text("lbl_10_results".tr, style: CustomTextStyles.labelMediumManropeGray50002))])); } 
/// Section Widget
Widget _buildRestaurantCardList1(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Consumer<RestaurantSearchProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 11.v);}, itemCount: provider.restaurantSearchModelObj.restaurantcardlist1ItemList.length, itemBuilder: (context, index) {Restaurantcardlist1ItemModel model = provider.restaurantSearchModelObj.restaurantcardlist1ItemList[index]; return Restaurantcardlist1ItemWidget(model, onTapRestaurantCard: () {onTapRestaurantCard(context);});});})); } 
/// Section Widget
Widget _buildRestaurantCardList2(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Consumer<RestaurantSearchProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 12.v);}, itemCount: provider.restaurantSearchModelObj.restaurantcardlist2ItemList.length, itemBuilder: (context, index) {Restaurantcardlist2ItemModel model = provider.restaurantSearchModelObj.restaurantcardlist2ItemList[index]; return Restaurantcardlist2ItemWidget(model, onTapRestaurantCard: () {onTapRestaurantCard(context);});});})); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Search: return "/"; case BottomBarEnum.Cart: return AppRoutes.dashboardOnePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.dashboardOnePage: return DashboardOnePage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the restaurantDetailsScreen when the action is triggered.
onTapRestaurantCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.restaurantDetailsScreen); } 
/// Navigates to the profileScreen when the action is triggered.
onTapCircleImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileScreen, ); } 
/// Navigates to the restaurantMapScreen when the action is triggered.
onTapTxtAdvancedSearch(BuildContext context) { NavigatorService.pushNamed(AppRoutes.restaurantMapScreen, ); } 
 }
