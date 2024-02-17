import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/restaurant_map_three_screen/models/restaurant_map_three_model.dart';/// A provider class for the RestaurantMapThreeScreen.
///
/// This provider manages the state of the RestaurantMapThreeScreen, including the
/// current restaurantMapThreeModelObj

// ignore_for_file: must_be_immutable
class RestaurantMapThreeProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

RestaurantMapThreeModel restaurantMapThreeModelObj = RestaurantMapThreeModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
