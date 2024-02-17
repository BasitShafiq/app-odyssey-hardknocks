import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/restaurant_map_one_screen/models/restaurant_map_one_model.dart';/// A provider class for the RestaurantMapOneScreen.
///
/// This provider manages the state of the RestaurantMapOneScreen, including the
/// current restaurantMapOneModelObj

// ignore_for_file: must_be_immutable
class RestaurantMapOneProvider extends ChangeNotifier {RestaurantMapOneModel restaurantMapOneModelObj = RestaurantMapOneModel();

@override void dispose() { super.dispose(); } 
 }
