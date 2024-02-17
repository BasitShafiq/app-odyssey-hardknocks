import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/sign_up_two_screen/models/sign_up_two_model.dart';/// A provider class for the SignUpTwoScreen.
///
/// This provider manages the state of the SignUpTwoScreen, including the
/// current signUpTwoModelObj

// ignore_for_file: must_be_immutable
class SignUpTwoProvider extends ChangeNotifier {TextEditingController userNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

SignUpTwoModel signUpTwoModelObj = SignUpTwoModel();

bool isShowPassword = true;

@override void dispose() { super.dispose(); userNameController.dispose(); emailController.dispose(); phoneNumberController.dispose(); passwordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
 }
