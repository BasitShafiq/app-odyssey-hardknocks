import 'package:arest/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:velocity_x/velocity_x.dart';

import 'models/log_in_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/core/utils/validation_functions.dart';
import 'package:arest/widgets/custom_checkbox_button.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:arest/widgets/custom_outlined_button.dart';
import 'package:arest/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/log_in_provider.dart';
import 'package:arest/domain/googleauth/google_auth_helper.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  LogInScreenState createState() => LogInScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LogInProvider(), child: LogInScreen());
  }
}

// ignore_for_file: must_be_immutable
class LogInScreenState extends State<LogInScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LogInProvider>(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 37.h),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 6.v),
                                  CustomImageView(
                                      imagePath: "assets/images/logo.jpeg",
                                      height: 108.adaptSize,
                                      width: 108.adaptSize),
                                  SizedBox(height: 29.v),
                                  Text("lbl_log_in".tr,
                                      style: theme.textTheme.headlineSmall),
                                  SizedBox(height: 13.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Text("lbl_email".tr,
                                              style: CustomTextStyles
                                                  .titleSmallPoppinsBlack90002))),
                                  SizedBox(height: 6.v),
                                  _buildEmailField(context),
                                  SizedBox(height: 19.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 7.h),
                                          child: Text("lbl_password".tr,
                                              style: CustomTextStyles
                                                  .titleSmallPoppinsBlack90002))),
                                  SizedBox(height: 5.v),
                                  _buildPasswordField(context),
                                  SizedBox(height: 25.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 3.h, right: 11.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            _buildRememberMeCheckbox(context),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtForgotPassword(
                                                      context);
                                                },
                                                child: Text(
                                                    "msg_forgot_password".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallRed300))
                                          ])),
                                  SizedBox(height: 31.v),
                                  _buildLoginButton(
                                      context,
                                      provider.emailFieldController.text,
                                      provider.passwordFieldController.text),
                                  SizedBox(height: 58.v),
                                  _buildEightySixRow(context),
                                  SizedBox(height: 32.v),
                                  _buildLoginWithGoogleButton(context),
                                  SizedBox(height: 20.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAlreadyAccount(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 35.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.v),
                                                    child: Text(
                                                        "msg_don_t_have_an_account"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .titleMediumOnSecondaryContainer)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5.h),
                                                    child: Text(
                                                        "lbl_sign_up".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumBlueA400
                                                            .copyWith(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline)))
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Selector<LogInProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailFieldController,
        builder: (context, emailFieldController, child) {
          return CustomTextFormField(
              controller: emailFieldController,
              hintText: "msg_example_gmail_com".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
              borderDecoration: TextFormFieldStyleHelper.outlineBlack,
              fillColor: appTheme.whiteA70002.withOpacity(0.08));
        });
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Consumer<LogInProvider>(builder: (context, provider, child) {
      return CustomTextFormField(
          controller: provider.passwordFieldController,
          hintText: "msg_enter_your_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility();
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 17.v, 15.h, 13.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEyeIcon,
                      height: 18.adaptSize,
                      width: 18.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword,
          contentPadding: EdgeInsets.only(left: 17.h, top: 13.v, bottom: 13.v),
          borderDecoration: TextFormFieldStyleHelper.outlineBlackTL10,
          fillColor: appTheme.whiteA70002.withOpacity(0.08));
    });
  }

  /// Section Widget
  Widget _buildRememberMeCheckbox(BuildContext context) {
    return Selector<LogInProvider, bool?>(
        selector: (context, provider) => provider.rememberMeCheckbox,
        builder: (context, rememberMeCheckbox, child) {
          return CustomCheckboxButton(
              text: "lbl_remember_me".tr,
              value: rememberMeCheckbox,
              onChange: (value) {
                context.read<LogInProvider>().changeCheckBox1(value);
              });
        });
  }

  /// Section Widget
  Widget _buildLoginButton(
      BuildContext context, String email, String password) {
    return CustomElevatedButton(
        text: "lbl_login2".tr,
        onPressed: () {
          onTapLoginButton(context, email, password);
        });
  }

  /// Section Widget
  Widget _buildEightySixRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 11.v, bottom: 8.v),
              child: SizedBox(
                  width: 90.h,
                  child: Divider(color: appTheme.black90002.withOpacity(0.5)))),
          Text("msg_or_continue_with".tr,
              style: CustomTextStyles.bodyMediumPoppinsBlack90002),
          Padding(
              padding: EdgeInsets.only(top: 11.v, bottom: 8.v),
              child: SizedBox(
                  width: 90.h,
                  child: Divider(color: appTheme.black90002.withOpacity(0.5))))
        ]);
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 48.v,
        text: "msg_login_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleLogo,
                height: 26.adaptSize,
                width: 26.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.titleMediumPoppinsBlack90002,
        onPressed: () {
          onTapLoginWithGoogleButton(context);
        });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpOneScreen,
    );
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapLoginButton(BuildContext context, String email, String password) {
    signIn(email: email, password: password).then((value) {
      NavigatorService.pushNamed(
        AppRoutes.dashboardScreen,
      );
    }).onError((error, stackTrace) {
      VxToast.show(context, msg: "Something went wrong");
    });
  }

  onTapLoginWithGoogleButton(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        signInWithGoogle().then((value) {
          NavigatorService.pushNamed(
            AppRoutes.dashboardScreen,
          );
        });
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Navigates to the signUpTwoScreen when the action is triggered.
  onTapAlreadyAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpTwoScreen,
    );
  }
}
