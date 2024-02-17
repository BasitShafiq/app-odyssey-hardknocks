import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/order_history_page/models/order_history_model.dart';import '../models/userprofile2_item_model.dart';/// A provider class for the OrderHistoryPage.
///
/// This provider manages the state of the OrderHistoryPage, including the
/// current orderHistoryModelObj

// ignore_for_file: must_be_immutable
class OrderHistoryProvider extends ChangeNotifier {OrderHistoryModel orderHistoryModelObj = OrderHistoryModel();

@override void dispose() { super.dispose(); } 
 }
