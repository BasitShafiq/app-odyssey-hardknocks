import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/restaurant_search_screen/models/restaurant_search_model.dart';import '../models/restaurantcardlist1_item_model.dart';import '../models/restaurantcardlist2_item_model.dart';/// A provider class for the RestaurantSearchScreen.
///
/// This provider manages the state of the RestaurantSearchScreen, including the
/// current restaurantSearchModelObj

// ignore_for_file: must_be_immutable
class RestaurantSearchProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

RestaurantSearchModel restaurantSearchModelObj = RestaurantSearchModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
