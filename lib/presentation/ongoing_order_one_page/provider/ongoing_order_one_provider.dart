import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/ongoing_order_one_page/models/ongoing_order_one_model.dart';import '../models/userprofile3_item_model.dart';/// A provider class for the OngoingOrderOnePage.
///
/// This provider manages the state of the OngoingOrderOnePage, including the
/// current ongoingOrderOneModelObj

// ignore_for_file: must_be_immutable
class OngoingOrderOneProvider extends ChangeNotifier {OngoingOrderOneModel ongoingOrderOneModelObj = OngoingOrderOneModel();

@override void dispose() { super.dispose(); } 
 }
