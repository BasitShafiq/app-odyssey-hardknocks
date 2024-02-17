import '../models/dish4_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dish4ItemWidget extends StatelessWidget {
  Dish4ItemWidget(
    this.dish4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Dish4ItemModel dish4ItemModelObj;

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
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 69.v),
                  Text(
                    dish4ItemModelObj.foodName!,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelLarge,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    dish4ItemModelObj.details!,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeBluegray300,
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.v),
                            child: Text(
                              dish4ItemModelObj.rs!,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              dish4ItemModelObj.price!,
                              style: CustomTextStyles.titleSmallNunitoPrimary,
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
                imagePath: dish4ItemModelObj?.foodImage,
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
