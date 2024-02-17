import 'models/sign_up_three_model.dart';import 'package:arest/core/app_export.dart';import 'package:arest/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/sign_up_three_provider.dart';class SignUpThreeScreen extends StatefulWidget {const SignUpThreeScreen({Key? key}) : super(key: key);

@override SignUpThreeScreenState createState() =>  SignUpThreeScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SignUpThreeProvider(), child: SignUpThreeScreen()); } 
 }
class SignUpThreeScreenState extends State<SignUpThreeScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerRight, child: SizedBox(height: 297.v, width: 249.h, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgLogoWithoutName, height: 108.adaptSize, width: 108.adaptSize, alignment: Alignment.bottomLeft), CustomImageView(imagePath: ImageConstant.imgGroup, height: 244.v, width: 242.h, alignment: Alignment.topCenter)]))), SizedBox(height: 29.v), Text("msg_password_changed".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 9.v), SizedBox(width: 221.h, child: Text("msg_your_password_has".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyMediumBlack90002_1.copyWith(height: 1.25))), SizedBox(height: 33.v), CustomElevatedButton(text: "lbl_back_to_login".tr, margin: EdgeInsets.symmetric(horizontal: 39.h), onPressed: () {onTapBackToLogin(context);}), Spacer(), CustomImageView(imagePath: ImageConstant.imgGroupTeal900, height: 230.v, width: 266.h, alignment: Alignment.centerLeft)])))); } 
/// Navigates to the dashboardScreen when the action is triggered.
onTapBackToLogin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardScreen, ); } 
 }
