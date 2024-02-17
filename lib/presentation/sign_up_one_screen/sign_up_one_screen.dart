import 'models/sign_up_one_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/core/utils/validation_functions.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:arest/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/sign_up_one_provider.dart';

class SignUpOneScreen extends StatefulWidget {
  const SignUpOneScreen({Key? key}) : super(key: key);

  @override
  SignUpOneScreenState createState() => SignUpOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignUpOneProvider(), child: SignUpOneScreen());
  }
}

// ignore_for_file: must_be_immutable
class SignUpOneScreenState extends State<SignUpOneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 39.h, top: 83.v, right: 39.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgLogoWithoutName,
                                      height: 108.adaptSize,
                                      width: 108.adaptSize),
                                  SizedBox(height: 27.v),
                                  Text("lbl_reset_password".tr,
                                      style: theme.textTheme.headlineSmall),
                                  SizedBox(height: 17.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 16.h),
                                          child: Text(
                                              "msg_please_type_something".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack90002_1))),
                                  SizedBox(height: 18.v),
                                  Selector<SignUpOneProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.newpasswordController,
                                      builder: (context, newpasswordController,
                                          child) {
                                        return CustomTextFormField(
                                            controller: newpasswordController,
                                            hintText:
                                                "msg_enter_new_password".tr,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            obscureText: true,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 18.h,
                                                    vertical: 13.v));
                                      }),
                                  SizedBox(height: 20.v),
                                  Selector<SignUpOneProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.newpasswordController1,
                                      builder: (context, newpasswordController1,
                                          child) {
                                        return CustomTextFormField(
                                            controller: newpasswordController1,
                                            hintText:
                                                "msg_repeat_new_password".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            obscureText: true,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 18.h,
                                                    vertical: 13.v));
                                      }),
                                  SizedBox(height: 16.v),
                                  CustomElevatedButton(
                                      text: "lbl_reset_password".tr,
                                      onPressed: () {
                                        onTapResetPassword(context);
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Navigates to the signUpThreeScreen when the action is triggered.
  onTapResetPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpThreeScreen,
    );
  }
}
