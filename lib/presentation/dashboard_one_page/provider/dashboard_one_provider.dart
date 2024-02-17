import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/dashboard_one_page/models/dashboard_one_model.dart';import '../models/dish2_item_model.dart';import '../models/restaurantinfo_item_model.dart';import '../models/restaurantinfo1_item_model.dart';/// A provider class for the DashboardOnePage.
///
/// This provider manages the state of the DashboardOnePage, including the
/// current dashboardOneModelObj

// ignore_for_file: must_be_immutable
class DashboardOneProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

DashboardOneModel dashboardOneModelObj = DashboardOneModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
