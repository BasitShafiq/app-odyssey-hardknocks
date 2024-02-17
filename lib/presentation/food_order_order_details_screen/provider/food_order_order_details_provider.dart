import 'package:flutter/material.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/food_order_order_details_screen/models/food_order_order_details_model.dart';
import '../models/menulist_item_model.dart';

/// A provider class for the FoodOrderOrderDetailsScreen.
///
/// This provider manages the state of the FoodOrderOrderDetailsScreen, including the
/// current foodOrderOrderDetailsModelObj

// ignore_for_file: must_be_immutable
class FoodOrderOrderDetailsProvider extends ChangeNotifier {
  FoodOrderOrderDetailsModel foodOrderOrderDetailsModelObj =
      FoodOrderOrderDetailsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
