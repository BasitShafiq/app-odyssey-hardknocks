import '../models/thirtyeight_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ThirtyeightItemWidget extends StatelessWidget {
  ThirtyeightItemWidget(
    this.thirtyeightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtyeightItemModel thirtyeightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 242.v,
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
