import '../models/restaurantprofile_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RestaurantprofileItemWidget extends StatelessWidget {
  RestaurantprofileItemWidget(
    this.restaurantprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RestaurantprofileItemModel restaurantprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outlineBlack900024.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: restaurantprofileItemModelObj?.restaurantImage,
              height: 161.v,
              width: 322.h,
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                right: 20.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    restaurantprofileItemModelObj.restaurantName!,
                    style: CustomTextStyles.titleLargeManropeBluegray80002,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 2.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIonStar,
                          height: 19.adaptSize,
                          width: 19.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            restaurantprofileItemModelObj.ratingText!,
                            style: CustomTextStyles.bodyLargeBluegray80002,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 244.h,
                margin: EdgeInsets.only(
                  left: 17.h,
                  right: 61.h,
                ),
                child: Text(
                  restaurantprofileItemModelObj.restaurantDescription!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBluegray80002.copyWith(
                    height: 1.14,
                  ),
                ),
              ),
            ),
            SizedBox(height: 13.v),
          ],
        ),
      ),
    );
  }
}
