import '../models/fiftyone_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftyoneItemWidget extends StatelessWidget {
  FiftyoneItemWidget(
    this.fiftyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftyoneItemModel fiftyoneItemModelObj;

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
