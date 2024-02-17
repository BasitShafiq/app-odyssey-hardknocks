import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/food_order_food_details_screen/models/food_order_food_details_model.dart';/// A provider class for the FoodOrderFoodDetailsScreen.
///
/// This provider manages the state of the FoodOrderFoodDetailsScreen, including the
/// current foodOrderFoodDetailsModelObj

// ignore_for_file: must_be_immutable
class FoodOrderFoodDetailsProvider extends ChangeNotifier {FoodOrderFoodDetailsModel foodOrderFoodDetailsModelObj = FoodOrderFoodDetailsModel();

@override void dispose() { super.dispose(); } 
 }
