import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/restaurant_map_screen/models/restaurant_map_model.dart';/// A provider class for the RestaurantMapScreen.
///
/// This provider manages the state of the RestaurantMapScreen, including the
/// current restaurantMapModelObj

// ignore_for_file: must_be_immutable
class RestaurantMapProvider extends ChangeNotifier {RestaurantMapModel restaurantMapModelObj = RestaurantMapModel();

@override void dispose() { super.dispose(); } 
 }
