import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/restaurant_map_two_screen/models/restaurant_map_two_model.dart';/// A provider class for the RestaurantMapTwoScreen.
///
/// This provider manages the state of the RestaurantMapTwoScreen, including the
/// current restaurantMapTwoModelObj

// ignore_for_file: must_be_immutable
class RestaurantMapTwoProvider extends ChangeNotifier {RestaurantMapTwoModel restaurantMapTwoModelObj = RestaurantMapTwoModel();

@override void dispose() { super.dispose(); } 
 }
