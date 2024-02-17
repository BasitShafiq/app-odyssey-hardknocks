import 'package:flutter/material.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/payment_page/models/payment_model.dart';

/// A provider class for the PaymentPage.
///
/// This provider manages the state of the PaymentPage, including the
/// current paymentModelObj
class PaymentProvider extends ChangeNotifier {
  PaymentModel paymentModelObj = PaymentModel();

  @override
  void dispose() {
    super.dispose();
  }
}
