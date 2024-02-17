import 'package:flutter/material.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/table_reservation_unselected_one_page/models/table_reservation_unselected_one_model.dart';

/// A provider class for the TableReservationUnselectedOnePage.
///
/// This provider manages the state of the TableReservationUnselectedOnePage, including the
/// current tableReservationUnselectedOneModelObj
class TableReservationUnselectedOneProvider extends ChangeNotifier {
  TableReservationUnselectedOneModel tableReservationUnselectedOneModelObj =
      TableReservationUnselectedOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
