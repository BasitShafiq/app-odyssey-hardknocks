import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/view_in_arestro_mode_screen/models/view_in_arestro_mode_model.dart';/// A provider class for the ViewInArestroModeScreen.
///
/// This provider manages the state of the ViewInArestroModeScreen, including the
/// current viewInArestroModeModelObj

// ignore_for_file: must_be_immutable
class ViewInArestroModeProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

ViewInArestroModeModel viewInArestroModeModelObj = ViewInArestroModeModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
