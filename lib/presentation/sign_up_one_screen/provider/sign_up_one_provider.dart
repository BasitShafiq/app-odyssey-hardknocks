import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/sign_up_one_screen/models/sign_up_one_model.dart';/// A provider class for the SignUpOneScreen.
///
/// This provider manages the state of the SignUpOneScreen, including the
/// current signUpOneModelObj

// ignore_for_file: must_be_immutable
class SignUpOneProvider extends ChangeNotifier {TextEditingController newpasswordController = TextEditingController();

TextEditingController newpasswordController1 = TextEditingController();

SignUpOneModel signUpOneModelObj = SignUpOneModel();

@override void dispose() { super.dispose(); newpasswordController.dispose(); newpasswordController1.dispose(); } 
 }
