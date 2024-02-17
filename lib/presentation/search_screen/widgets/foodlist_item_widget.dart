import '../models/foodlist_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class FoodlistItemWidget extends StatelessWidget {
  FoodlistItemWidget(
    this.foodlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FoodlistItemModel foodlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109.v,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.whiteA70002,
        borderRadius: BorderRadius.circular(
          16.h,
        ),
      ),
    );
  }
}
