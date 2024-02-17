import 'models/food_order_complete_model.dart';import 'package:arest/core/app_export.dart';import 'package:arest/widgets/custom_elevated_button.dart';import 'package:arest/widgets/custom_outlined_button.dart';import 'package:arest/widgets/custom_rating_bar.dart';import 'package:arest/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'provider/food_order_complete_provider.dart';class FoodOrderCompleteScreen extends StatefulWidget {const FoodOrderCompleteScreen({Key? key}) : super(key: key);

@override FoodOrderCompleteScreenState createState() =>  FoodOrderCompleteScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FoodOrderCompleteProvider(), child: FoodOrderCompleteScreen()); } 
 }
class FoodOrderCompleteScreenState extends State<FoodOrderCompleteScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, resizeToAvoidBottomInset: false, body: SizedBox(height: SizeUtils.height, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgPattern, height: 844.v, width: 390.h, alignment: Alignment.center), Align(alignment: Alignment.bottomCenter, child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 41.v), padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(children: [Container(margin: EdgeInsets.only(left: 87.h, right: 82.h), padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 8.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup78), fit: BoxFit.cover)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 66.v), Container(height: 85.adaptSize, width: 85.adaptSize, padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 33.v), decoration: AppDecoration.outlineLightBlueAD.copyWith(borderRadius: BorderRadiusStyle.roundedBorder42), child: CustomImageView(imagePath: ImageConstant.imgCheckmark, height: 17.v, width: 27.h, alignment: Alignment.bottomCenter))])), SizedBox(height: 13.v), SizedBox(width: 214.h, child: Text("msg_thank_you_order".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineMediumTeal900.copyWith(height: 1.31))), SizedBox(height: 121.v), CustomRatingBar(initialRating: 2, itemSize: 35, color: appTheme.yellow800), SizedBox(height: 21.v), Selector<FoodOrderCompleteProvider, TextEditingController?>(selector: (context, provider) => provider.leaveFeedbackController, builder: (context, leaveFeedbackController, child) {return CustomTextFormField(controller: leaveFeedbackController, hintText: "lbl_leave_feedback".tr, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(19.h, 15.v, 10.h, 16.v), decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.h)), child: CustomImageView(imagePath: ImageConstant.imgEdit, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 57.v), contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v));}), SizedBox(height: 21.v), _buildSubmit(context)]))))])))); } 
/// Section Widget
Widget _buildSubmit(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(height: 59.v, width: 242.h, text: "lbl_submit".tr, buttonTextStyle: CustomTextStyles.titleSmallWhiteA70001, onPressed: () {onTapSubmit(context);}), CustomOutlinedButton(height: 59.v, width: 85.h, text: "lbl_skip".tr, buttonStyle: CustomButtonStyles.outlineTeal, buttonTextStyle: CustomTextStyles.titleSmallTeal900, onPressed: () {onTapSkip(context);})]); } 
/// Navigates to the dashboardScreen when the action is triggered.
onTapSubmit(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardScreen, ); } 
/// Navigates to the dashboardScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardScreen, ); } 
 }
