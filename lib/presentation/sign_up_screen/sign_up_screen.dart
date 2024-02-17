import 'models/sign_up_model.dart';import 'package:arest/core/app_export.dart';import 'package:arest/core/utils/validation_functions.dart';import 'package:arest/widgets/custom_elevated_button.dart';import 'package:arest/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'provider/sign_up_provider.dart';class SignUpScreen extends StatefulWidget {const SignUpScreen({Key? key}) : super(key: key);

@override SignUpScreenState createState() =>  SignUpScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SignUpProvider(), child: SignUpScreen()); } 
 }

// ignore_for_file: must_be_immutable
class SignUpScreenState extends State<SignUpScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Center(child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 74.v), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 8.v), CustomImageView(imagePath: ImageConstant.imgLogoWithoutName, height: 108.adaptSize, width: 108.adaptSize), SizedBox(height: 29.v), Text("lbl_forgot_password".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 13.v), Align(alignment: Alignment.centerLeft, child: Container(width: 269.h, margin: EdgeInsets.only(left: 18.h, right: 28.h), child: Text("msg_don_t_worry_it".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumBlack90002_1.copyWith(height: 1.25)))), SizedBox(height: 30.v), Selector<SignUpProvider, TextEditingController?>(selector: (context, provider) => provider.emailController, builder: (context, emailController, child) {return CustomTextFormField(controller: emailController, hintText: "msg_enter_your_email".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 13.v));}), SizedBox(height: 23.v), CustomElevatedButton(text: "lbl_send_code".tr, onPressed: () {onTapSendCode(context);}), Spacer(), Padding(padding: EdgeInsets.symmetric(horizontal: 40.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_remember_password".tr, style: CustomTextStyles.titleMediumPoppinsBlack90002Medium)), GestureDetector(onTap: () {onTapTxtLogin(context);}, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_login2".tr, style: CustomTextStyles.titleMediumPoppinsBlueA400.copyWith(decoration: TextDecoration.underline))))]))]))))))); } 
/// Navigates to the signUpOneScreen when the action is triggered.
onTapSendCode(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpOneScreen, ); } 
/// Navigates to the logInScreen when the action is triggered.
onTapTxtLogin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.logInScreen, ); } 
 }
