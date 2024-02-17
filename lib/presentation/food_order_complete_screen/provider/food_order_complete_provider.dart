import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/food_order_complete_screen/models/food_order_complete_model.dart';/// A provider class for the FoodOrderCompleteScreen.
///
/// This provider manages the state of the FoodOrderCompleteScreen, including the
/// current foodOrderCompleteModelObj

// ignore_for_file: must_be_immutable
class FoodOrderCompleteProvider extends ChangeNotifier {TextEditingController leaveFeedbackController = TextEditingController();

FoodOrderCompleteModel foodOrderCompleteModelObj = FoodOrderCompleteModel();

@override void dispose() { super.dispose(); leaveFeedbackController.dispose(); } 
 }
