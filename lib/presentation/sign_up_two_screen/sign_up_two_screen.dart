import 'package:arest/services/auth.dart';
import 'package:velocity_x/velocity_x.dart';

import 'models/sign_up_two_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/core/utils/validation_functions.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:arest/widgets/custom_outlined_button.dart';
import 'package:arest/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/sign_up_two_provider.dart';

class SignUpTwoScreen extends StatefulWidget {
  const SignUpTwoScreen({Key? key}) : super(key: key);

  @override
  SignUpTwoScreenState createState() => SignUpTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignUpTwoProvider(), child: SignUpTwoScreen());
  }
}

// ignore_for_file: must_be_immutable
class SignUpTwoScreenState extends State<SignUpTwoScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SignUpTwoProvider>(context);
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
                                  Text("msg_create_an_account".tr,
                                      style: theme.textTheme.headlineSmall),
                                  SizedBox(height: 19.v),
                                  _buildUserName(context),
                                  SizedBox(height: 20.v),
                                  _buildEmail(context),
                                  SizedBox(height: 20.v),
                                  _buildPhoneNumber(context),
                                  SizedBox(height: 20.v),
                                  _buildPassword(context),
                                  SizedBox(height: 20.v),
                                  _buildSignUpButton(
                                      context,
                                      provider.emailController.text,
                                      provider.passwordController.text),
                                  SizedBox(height: 31.v),
                                  _buildRowContainer(context),
                                  SizedBox(height: 32.v),
                                  _buildGoogleSignUpButton(context),
                                  SizedBox(height: 22.v),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("msg_already_have_an".tr,
                                                style: CustomTextStyles
                                                    .titleMediumPoppinsBlack90002Medium),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtLogin(context);
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10.h),
                                                    child: Text("lbl_login2".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumPoppinsBlueA400
                                                            .copyWith(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline))))
                                          ]))
                                ])))))));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Selector<SignUpTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.userNameController,
        builder: (context, userNameController, child) {
          return CustomTextFormField(
              controller: userNameController,
              hintText: "msg_enter_your_username".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 18.h, vertical: 13.v));
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<SignUpTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "msg_enter_your_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 18.h, vertical: 13.v));
        });
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Selector<SignUpTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.phoneNumberController,
        builder: (context, phoneNumberController, child) {
          return CustomTextFormField(
              controller: phoneNumberController,
              hintText: "msg_enter_your_phone".tr,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 18.h, vertical: 13.v));
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer<SignUpTwoProvider>(builder: (context, provider, child) {
      return CustomTextFormField(
          controller: provider.passwordController,
          hintText: "msg_enter_your_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility();
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 13.h, 12.v),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5.h)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEyePasswordLogo,
                      height: 24.adaptSize,
                      width: 24.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword,
          contentPadding: EdgeInsets.only(left: 18.h, top: 13.v, bottom: 13.v));
    });
  }

  /// Section Widget
  Widget _buildSignUpButton(
      BuildContext context, String email, String password) {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        onPressed: () {
          onTapSignUpButton(context, email, password);
        });
  }

  /// Section Widget
  Widget _buildRowContainer(BuildContext context) {
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
  Widget _buildGoogleSignUpButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 48.v,
        text: "msg_signup_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleLogo,
                height: 26.adaptSize,
                width: 26.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.titleMediumPoppinsBlack90002);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapSignUpButton(BuildContext context, String email, String password) {
    signUp(email: email, password: password, context: context).then((value) {
      NavigatorService.pushNamed(
        AppRoutes.dashboardScreen,
      );
    }).onError((error, stackTrace) {
      VxToast.show(context, msg: "Something went wrong");
    });
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
