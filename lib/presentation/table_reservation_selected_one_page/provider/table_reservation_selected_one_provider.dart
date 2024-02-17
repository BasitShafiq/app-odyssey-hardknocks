import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/table_reservation_selected_one_page/models/table_reservation_selected_one_model.dart';/// A provider class for the TableReservationSelectedOnePage.
///
/// This provider manages the state of the TableReservationSelectedOnePage, including the
/// current tableReservationSelectedOneModelObj

// ignore_for_file: must_be_immutable
class TableReservationSelectedOneProvider extends ChangeNotifier {TableReservationSelectedOneModel tableReservationSelectedOneModelObj = TableReservationSelectedOneModel();

@override void dispose() { super.dispose(); } 
 }
