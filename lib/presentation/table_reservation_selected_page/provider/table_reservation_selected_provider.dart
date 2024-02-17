import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/table_reservation_selected_page/models/table_reservation_selected_model.dart';/// A provider class for the TableReservationSelectedPage.
///
/// This provider manages the state of the TableReservationSelectedPage, including the
/// current tableReservationSelectedModelObj

// ignore_for_file: must_be_immutable
class TableReservationSelectedProvider extends ChangeNotifier {TableReservationSelectedModel tableReservationSelectedModelObj = TableReservationSelectedModel();

@override void dispose() { super.dispose(); } 
 }
