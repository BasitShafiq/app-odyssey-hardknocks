import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/sign_up_three_screen/models/sign_up_three_model.dart';/// A provider class for the SignUpThreeScreen.
///
/// This provider manages the state of the SignUpThreeScreen, including the
/// current signUpThreeModelObj

// ignore_for_file: must_be_immutable
class SignUpThreeProvider extends ChangeNotifier {SignUpThreeModel signUpThreeModelObj = SignUpThreeModel();

@override void dispose() { super.dispose(); } 
 }
