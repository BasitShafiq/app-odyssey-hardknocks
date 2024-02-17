import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/log_in_screen/models/log_in_model.dart';/// A provider class for the LogInScreen.
///
/// This provider manages the state of the LogInScreen, including the
/// current logInModelObj

// ignore_for_file: must_be_immutable
class LogInProvider extends ChangeNotifier {TextEditingController emailFieldController = TextEditingController();

TextEditingController passwordFieldController = TextEditingController();

LogInModel logInModelObj = LogInModel();

bool isShowPassword = true;

bool rememberMeCheckbox = false;

@override void dispose() { super.dispose(); emailFieldController.dispose(); passwordFieldController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changeCheckBox1(bool value) { rememberMeCheckbox = value; notifyListeners(); } 
 }
