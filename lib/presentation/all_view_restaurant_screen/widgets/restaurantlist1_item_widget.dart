import '../models/restaurantlist1_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Restaurantlist1ItemWidget extends StatelessWidget {
  Restaurantlist1ItemWidget(
    this.restaurantlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Restaurantlist1ItemModel restaurantlist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.v,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.whiteA70002,
        borderRadius: BorderRadius.circular(
          14.h,
        ),
      ),
    );
  }
}
