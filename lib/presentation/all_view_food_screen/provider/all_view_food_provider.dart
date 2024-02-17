import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/all_view_food_screen/models/all_view_food_model.dart';import '../models/thirtyseven_item_model.dart';import '../models/thirtyeight_item_model.dart';/// A provider class for the AllViewFoodScreen.
///
/// This provider manages the state of the AllViewFoodScreen, including the
/// current allViewFoodModelObj

// ignore_for_file: must_be_immutable
class AllViewFoodProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

AllViewFoodModel allViewFoodModelObj = AllViewFoodModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
