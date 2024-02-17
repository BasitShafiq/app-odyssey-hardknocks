import 'dart:async';import 'models/restaurant_map_model.dart';import 'package:arest/core/app_export.dart';import 'package:arest/widgets/app_bar/appbar_leading_image.dart';import 'package:arest/widgets/app_bar/appbar_title_image.dart';import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';import 'package:arest/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'provider/restaurant_map_provider.dart';class RestaurantMapScreen extends StatefulWidget {const RestaurantMapScreen({Key? key}) : super(key: key);

@override RestaurantMapScreenState createState() =>  RestaurantMapScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => RestaurantMapProvider(), child: RestaurantMapScreen()); } 
 }

// ignore_for_file: must_be_immutable
class RestaurantMapScreenState extends State<RestaurantMapScreen> {Completer<GoogleMapController> googleMapController = Completer();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(height: SizeUtils.height, width: 389.h, child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(imagePath: ImageConstant.imgImage4, height: 844.v, width: 389.h, alignment: Alignment.center), _buildRestaurantMapLocation(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgMegaphone, margin: EdgeInsets.only(left: 33.h, top: 63.v, bottom: 19.v)), centerTitle: true, title: Padding(padding: EdgeInsets.only(top: 56.v, bottom: 13.v), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgLock, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 5.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_ar".tr, style: CustomTextStyles.titleLargeff009944), TextSpan(text: "lbl_estro".tr, style: CustomTextStyles.titleLargeff004422)]), textAlign: TextAlign.left))])), actions: [AppbarTrailingCircleimage(imagePath: ImageConstant.imgEllipse4, margin: EdgeInsets.fromLTRB(34.h, 56.v, 34.h, 12.v), onTap: () {onTapCircleImage(context);})], styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildRestaurantMapLocation(BuildContext context) { return Container(height: 673.v, width: 343.h, margin: EdgeInsets.only(left: 17.h, bottom: 47.v), child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
/// Navigates to the profileScreen when the action is triggered.
onTapCircleImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileScreen, ); } 
 }
