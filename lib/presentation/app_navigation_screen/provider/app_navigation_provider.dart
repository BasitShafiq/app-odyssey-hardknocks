import 'package:flutter/material.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/app_navigation_screen/models/app_navigation_model.dart';

/// A provider class for the AppNavigationScreen.
///
/// This provider manages the state of the AppNavigationScreen, including the
/// current appNavigationModelObj
class AppNavigationProvider extends ChangeNotifier {
  AppNavigationModel appNavigationModelObj = AppNavigationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
