import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/sign_up_screen/models/sign_up_model.dart';/// A provider class for the SignUpScreen.
///
/// This provider manages the state of the SignUpScreen, including the
/// current signUpModelObj

// ignore_for_file: must_be_immutable
class SignUpProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

SignUpModel signUpModelObj = SignUpModel();

@override void dispose() { super.dispose(); emailController.dispose(); } 
 }
