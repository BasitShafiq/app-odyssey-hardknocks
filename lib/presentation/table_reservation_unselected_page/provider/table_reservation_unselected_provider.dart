import 'package:flutter/material.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/table_reservation_unselected_page/models/table_reservation_unselected_model.dart';

/// A provider class for the TableReservationUnselectedPage.
///
/// This provider manages the state of the TableReservationUnselectedPage, including the
/// current tableReservationUnselectedModelObj
class TableReservationUnselectedProvider extends ChangeNotifier {
  TableReservationUnselectedModel tableReservationUnselectedModelObj =
      TableReservationUnselectedModel();

  @override
  void dispose() {
    super.dispose();
  }
}
