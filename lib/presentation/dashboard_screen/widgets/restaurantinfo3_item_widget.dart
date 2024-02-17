import '../models/restaurantinfo3_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Restaurantinfo3ItemWidget extends StatelessWidget {
  Restaurantinfo3ItemWidget(
    this.restaurantinfo3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Restaurantinfo3ItemModel restaurantinfo3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle32,
              height: 93.v,
              width: 155.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              restaurantinfo3ItemModelObj.restaurantName!,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 5.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIonStar,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    restaurantinfo3ItemModelObj.ratingText!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
