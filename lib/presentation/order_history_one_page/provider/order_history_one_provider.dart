import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/order_history_one_page/models/order_history_one_model.dart';import '../models/userprofile1_item_model.dart';/// A provider class for the OrderHistoryOnePage.
///
/// This provider manages the state of the OrderHistoryOnePage, including the
/// current orderHistoryOneModelObj

// ignore_for_file: must_be_immutable
class OrderHistoryOneProvider extends ChangeNotifier {OrderHistoryOneModel orderHistoryOneModelObj = OrderHistoryOneModel();

@override void dispose() { super.dispose(); } 
 }
