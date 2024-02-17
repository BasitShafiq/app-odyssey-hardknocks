import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/order_history_tab_container_screen/models/order_history_tab_container_model.dart';/// A provider class for the OrderHistoryTabContainerScreen.
///
/// This provider manages the state of the OrderHistoryTabContainerScreen, including the
/// current orderHistoryTabContainerModelObj

// ignore_for_file: must_be_immutable
class OrderHistoryTabContainerProvider extends ChangeNotifier {OrderHistoryTabContainerModel orderHistoryTabContainerModelObj = OrderHistoryTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
