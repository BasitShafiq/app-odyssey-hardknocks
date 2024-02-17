import '../models/restaurantlist_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class RestaurantlistItemWidget extends StatelessWidget {
  RestaurantlistItemWidget(
    this.restaurantlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RestaurantlistItemModel restaurantlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.v,
      width: 389.h,
      decoration: BoxDecoration(
        color: appTheme.whiteA70002,
        borderRadius: BorderRadius.circular(
          14.h,
        ),
      ),
    );
  }
}
