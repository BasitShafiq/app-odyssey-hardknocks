import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/payment_tab_container_screen/models/payment_tab_container_model.dart';/// A provider class for the PaymentTabContainerScreen.
///
/// This provider manages the state of the PaymentTabContainerScreen, including the
/// current paymentTabContainerModelObj

// ignore_for_file: must_be_immutable
class PaymentTabContainerProvider extends ChangeNotifier {PaymentTabContainerModel paymentTabContainerModelObj = PaymentTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
