import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/table_reservation_successful_screen/models/table_reservation_successful_model.dart';/// A provider class for the TableReservationSuccessfulScreen.
///
/// This provider manages the state of the TableReservationSuccessfulScreen, including the
/// current tableReservationSuccessfulModelObj

// ignore_for_file: must_be_immutable
class TableReservationSuccessfulProvider extends ChangeNotifier {TableReservationSuccessfulModel tableReservationSuccessfulModelObj = TableReservationSuccessfulModel();

@override void dispose() { super.dispose(); } 
 }
