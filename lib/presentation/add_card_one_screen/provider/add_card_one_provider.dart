import 'package:flutter/material.dart';import 'package:arest/core/app_export.dart';import 'package:arest/presentation/add_card_one_screen/models/add_card_one_model.dart';/// A provider class for the AddCardOneScreen.
///
/// This provider manages the state of the AddCardOneScreen, including the
/// current addCardOneModelObj

// ignore_for_file: must_be_immutable
class AddCardOneProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController cardNumberController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController languageController = TextEditingController();

AddCardOneModel addCardOneModelObj = AddCardOneModel();

@override void dispose() { super.dispose(); nameController.dispose(); cardNumberController.dispose(); dateController.dispose(); languageController.dispose(); } 
 }
