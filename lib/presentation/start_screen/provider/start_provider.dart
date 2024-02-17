import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/start_screen/models/start_model.dart';/// A provider class for the StartScreen.
///
/// This provider manages the state of the StartScreen, including the
/// current startModelObj

// ignore_for_file: must_be_immutable
class StartProvider extends ChangeNotifier {StartModel startModelObj = StartModel();

@override void dispose() { super.dispose(); } 
 }
