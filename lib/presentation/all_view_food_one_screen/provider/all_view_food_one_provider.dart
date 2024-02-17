import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/all_view_food_one_screen/models/all_view_food_one_model.dart';import '../models/dish5_item_model.dart';import '../models/fiftyone_item_model.dart';/// A provider class for the AllViewFoodOneScreen.
///
/// This provider manages the state of the AllViewFoodOneScreen, including the
/// current allViewFoodOneModelObj

// ignore_for_file: must_be_immutable
class AllViewFoodOneProvider extends ChangeNotifier {AllViewFoodOneModel allViewFoodOneModelObj = AllViewFoodOneModel();

@override void dispose() { super.dispose(); } 
 }
