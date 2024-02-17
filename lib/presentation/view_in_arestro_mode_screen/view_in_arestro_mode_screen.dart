import 'models/view_in_arestro_mode_model.dart';import 'package:arest/core/app_export.dart';import 'package:arest/widgets/app_bar/appbar_leading_image.dart';import 'package:arest/widgets/app_bar/appbar_title_image.dart';import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';import 'package:arest/widgets/app_bar/custom_app_bar.dart';import 'package:arest/widgets/custom_icon_button.dart';import 'package:arest/widgets/custom_search_view.dart';import 'package:flutter/material.dart';import 'provider/view_in_arestro_mode_provider.dart';class ViewInArestroModeScreen extends StatefulWidget {const ViewInArestroModeScreen({Key? key}) : super(key: key);

@override ViewInArestroModeScreenState createState() =>  ViewInArestroModeScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ViewInArestroModeProvider(), child: ViewInArestroModeScreen()); } 
 }
class ViewInArestroModeScreenState extends State<ViewInArestroModeScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.gray300, resizeToAvoidBottomInset: false, body: SizedBox(height: SizeUtils.height, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgImage6, height: 823.v, width: 390.h, alignment: Alignment.center), Align(alignment: Alignment.bottomCenter, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildAppBar(context), SizedBox(height: 24.v), Expanded(child: SingleChildScrollView(child: SizedBox(height: 1467.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(left: 31.h, right: 30.h), child: Selector<ViewInArestroModeProvider, TextEditingController?>(selector: (context, provider) => provider.searchController, builder: (context, searchController, child) {return CustomSearchView(controller: searchController, hintText: "lbl_search_for_food".tr, borderDecoration: SearchViewStyleHelper.outlineBlueGrayTL12);})), SizedBox(height: 76.v), CustomImageView(imagePath: ImageConstant.imgImage7, height: 243.v, width: 390.h), SizedBox(height: 94.v), _buildUserRow(context)])), Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 40.v), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgFrame), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildMenuNameRow(context), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgIconStar, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 3.v)), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("lbl_4_8_rating".tr, style: CustomTextStyles.bodyMediumGray50001))])), SizedBox(height: 11.v), Container(width: 305.h, margin: EdgeInsets.only(left: 3.h, right: 19.h), child: Text("msg_this_is_very_tasty".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumBlack90002.copyWith(height: 1.81))), SizedBox(height: 11.v)])))]))))]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgMegaphone, margin: EdgeInsets.only(left: 33.h, top: 63.v, bottom: 19.v)), centerTitle: true, title: Padding(padding: EdgeInsets.only(top: 56.v, bottom: 13.v), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgLock, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 5.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_ar".tr, style: CustomTextStyles.titleLargeff009944), TextSpan(text: "lbl_estro".tr, style: CustomTextStyles.titleLargeff004422)]), textAlign: TextAlign.left))])), actions: [AppbarTrailingCircleimage(imagePath: ImageConstant.imgEllipse4, margin: EdgeInsets.fromLTRB(34.h, 56.v, 34.h, 12.v), onTap: () {onTapCircleImage(context);})], styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildUserRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 31.h, right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 51.adaptSize, width: 51.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.outlineBlack, child: CustomImageView(imagePath: ImageConstant.imgUserPrimary)), Spacer(flex: 46), CustomIconButton(height: 51.adaptSize, width: 51.adaptSize, padding: EdgeInsets.all(11.h), decoration: IconButtonStyleHelper.outlineBlack, child: CustomImageView(imagePath: ImageConstant.imgIcRoundMenuBook)), Spacer(flex: 53), CustomIconButton(height: 51.adaptSize, width: 51.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.outlineBlack, child: CustomImageView(imagePath: ImageConstant.imgArrowRight))])); } 
/// Section Widget
Widget _buildMenuNameRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 3.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: SizedBox(width: 234.h, child: Text("msg_chicken_sausage_pizza".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineMedium!.copyWith(height: 1.21)))), Padding(padding: EdgeInsets.only(left: 55.h, top: 5.v, bottom: 29.v), child: CustomIconButton(height: 35.adaptSize, width: 35.adaptSize, padding: EdgeInsets.all(9.h), decoration: IconButtonStyleHelper.fillBlack, child: CustomImageView(imagePath: ImageConstant.imgHeart)))])); } 
/// Navigates to the profileScreen when the action is triggered.
onTapCircleImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileScreen, ); } 
 }
