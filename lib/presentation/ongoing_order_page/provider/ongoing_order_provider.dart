import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/ongoing_order_page/models/ongoing_order_model.dart';import '../models/userprofile_item_model.dart';/// A provider class for the OngoingOrderPage.
///
/// This provider manages the state of the OngoingOrderPage, including the
/// current ongoingOrderModelObj

// ignore_for_file: must_be_immutable
class OngoingOrderProvider extends ChangeNotifier {OngoingOrderModel ongoingOrderModelObj = OngoingOrderModel();

@override void dispose() { super.dispose(); } 
 }
