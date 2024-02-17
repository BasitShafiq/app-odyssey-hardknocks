import 'models/start_model.dart';import 'package:arest/core/app_export.dart';import 'package:arest/widgets/custom_elevated_button.dart';import 'package:arest/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'provider/start_provider.dart';class StartScreen extends StatefulWidget {const StartScreen({Key? key}) : super(key: key);

@override StartScreenState createState() =>  StartScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => StartProvider(), child: StartScreen()); } 
 }
class StartScreenState extends State<StartScreen> {@override void initState() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.logInScreen, );}); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 165.v), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLogoWithoutName, height: 181.adaptSize, width: 181.adaptSize), SizedBox(height: 27.v), Text("lbl_arestro".tr, style: theme.textTheme.displaySmall), Spacer(), CustomElevatedButton(text: "lbl_log_in".tr, buttonTextStyle: CustomTextStyles.titleMediumSemiBold, onPressed: () {onTapLogIn(context);}), SizedBox(height: 16.v), CustomOutlinedButton(height: 48.v, text: "lbl_sign_up".tr, buttonStyle: CustomButtonStyles.outlineGray, buttonTextStyle: CustomTextStyles.titleMediumGray700, onPressed: () {onTapSignUp(context);}), SizedBox(height: 14.v)])))); } 
/// Navigates to the logInScreen when the action is triggered.
onTapLogIn(BuildContext context) { NavigatorService.pushNamed(AppRoutes.logInScreen, ); } 
/// Navigates to the signUpTwoScreen when the action is triggered.
onTapSignUp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpTwoScreen, ); } 
 }
