import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/table_reservation_selected_tab_container_screen/models/table_reservation_selected_tab_container_model.dart';/// A provider class for the TableReservationSelectedTabContainerScreen.
///
/// This provider manages the state of the TableReservationSelectedTabContainerScreen, including the
/// current tableReservationSelectedTabContainerModelObj

// ignore_for_file: must_be_immutable
class TableReservationSelectedTabContainerProvider extends ChangeNotifier {TableReservationSelectedTabContainerModel tableReservationSelectedTabContainerModelObj = TableReservationSelectedTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
