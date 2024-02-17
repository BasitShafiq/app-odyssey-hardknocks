import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/table_reservation_successful_one_screen/models/table_reservation_successful_one_model.dart';/// A provider class for the TableReservationSuccessfulOneScreen.
///
/// This provider manages the state of the TableReservationSuccessfulOneScreen, including the
/// current tableReservationSuccessfulOneModelObj

// ignore_for_file: must_be_immutable
class TableReservationSuccessfulOneProvider extends ChangeNotifier {TableReservationSuccessfulOneModel tableReservationSuccessfulOneModelObj = TableReservationSuccessfulOneModel();

@override void dispose() { super.dispose(); } 
 }
