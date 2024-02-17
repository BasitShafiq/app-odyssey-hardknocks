import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/all_view_restaurant_screen/models/all_view_restaurant_model.dart';import '../models/restaurantlist1_item_model.dart';import '../models/restaurantprofile_item_model.dart';/// A provider class for the AllViewRestaurantScreen.
///
/// This provider manages the state of the AllViewRestaurantScreen, including the
/// current allViewRestaurantModelObj

// ignore_for_file: must_be_immutable
class AllViewRestaurantProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

AllViewRestaurantModel allViewRestaurantModelObj = AllViewRestaurantModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
