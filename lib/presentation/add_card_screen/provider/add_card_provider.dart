import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/add_card_screen/models/add_card_model.dart';/// A provider class for the AddCardScreen.
///
/// This provider manages the state of the AddCardScreen, including the
/// current addCardModelObj

// ignore_for_file: must_be_immutable
class AddCardProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController cardNumberController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController languageController = TextEditingController();

AddCardModel addCardModelObj = AddCardModel();

@override void dispose() { super.dispose(); nameController.dispose(); cardNumberController.dispose(); dateController.dispose(); languageController.dispose(); } 
 }
