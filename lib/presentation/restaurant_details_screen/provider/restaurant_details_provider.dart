import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/restaurant_details_screen/models/restaurant_details_model.dart';import '../models/dish4_item_model.dart';/// A provider class for the RestaurantDetailsScreen.
///
/// This provider manages the state of the RestaurantDetailsScreen, including the
/// current restaurantDetailsModelObj

// ignore_for_file: must_be_immutable
class RestaurantDetailsProvider extends ChangeNotifier {RestaurantDetailsModel restaurantDetailsModelObj = RestaurantDetailsModel();

@override void dispose() { super.dispose(); } 
 }
