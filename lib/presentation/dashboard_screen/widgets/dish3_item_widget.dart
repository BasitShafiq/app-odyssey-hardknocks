import '../models/dish3_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dish3ItemWidget extends StatelessWidget {
  Dish3ItemWidget(
    this.dish3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Dish3ItemModel dish3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235.v,
      width: 124.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 11.h),
              padding: EdgeInsets.all(12.h),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 71.v),
                  Text(
                    dish3ItemModelObj.foodName!,
                    style: CustomTextStyles.labelLargeManrope,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    dish3ItemModelObj.details!,
                    style: CustomTextStyles.labelLargeManropeBluegray300,
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 9.v),
                            child: Text(
                              dish3ItemModelObj.currency!,
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              dish3ItemModelObj.price!,
                              style: CustomTextStyles.titleSmallPrimaryBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 124.adaptSize,
              width: 124.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineBlueGrayC.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder62,
              ),
              child: CustomImageView(
                imagePath: dish3ItemModelObj?.foodImage,
                height: 90.v,
                width: 97.h,
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
