import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/dashboard_one_container_screen/models/dashboard_one_container_model.dart';/// A provider class for the DashboardOneContainerScreen.
///
/// This provider manages the state of the DashboardOneContainerScreen, including the
/// current dashboardOneContainerModelObj

// ignore_for_file: must_be_immutable
class DashboardOneContainerProvider extends ChangeNotifier {DashboardOneContainerModel dashboardOneContainerModelObj = DashboardOneContainerModel();

@override void dispose() { super.dispose(); } 
 }
