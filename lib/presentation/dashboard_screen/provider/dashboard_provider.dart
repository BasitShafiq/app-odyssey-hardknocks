import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/dashboard_screen/models/dashboard_model.dart';import '../models/dish3_item_model.dart';import '../models/restaurantinfo2_item_model.dart';import '../models/restaurantinfo3_item_model.dart';/// A provider class for the DashboardScreen.
///
/// This provider manages the state of the DashboardScreen, including the
/// current dashboardModelObj

// ignore_for_file: must_be_immutable
class DashboardProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

DashboardModel dashboardModelObj = DashboardModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
