import 'package:flutter/material.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/payment_one_page/models/payment_one_model.dart';

/// A provider class for the PaymentOnePage.
///
/// This provider manages the state of the PaymentOnePage, including the
/// current paymentOneModelObj
class PaymentOneProvider extends ChangeNotifier {
  PaymentOneModel paymentOneModelObj = PaymentOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
