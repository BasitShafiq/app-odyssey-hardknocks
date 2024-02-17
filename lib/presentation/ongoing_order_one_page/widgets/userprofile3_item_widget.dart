import '../models/userprofile3_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:arest/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 60.adaptSize,
              width: 60.adaptSize,
              radius: BorderRadius.circular(
                8.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 5.v,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofile3ItemModelObj.restaurantName!,
                    style: CustomTextStyles.titleMediumPrimaryContainer,
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    width: 129.h,
                    margin: EdgeInsets.only(right: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          userprofile3ItemModelObj.price!,
                          style: CustomTextStyles.titleSmallPrimaryContainer,
                        ),
                        SizedBox(
                          height: 18.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            endIndent: 2.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          child: Text(
                            userprofile3ItemModelObj.itemCount!,
                            style: CustomTextStyles.bodySmallSenGray60002,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 31.v,
              ),
              child: Text(
                userprofile3ItemModelObj.oneHundredSixtyTwoThousandFour!,
                style: CustomTextStyles.bodyMediumSecondaryContainer.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomElevatedButton(
                height: 38.v,
                text: "lbl_track_order".tr,
                margin: EdgeInsets.only(right: 24.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                buttonTextStyle: CustomTextStyles.labelLargeManropeWhiteA70002,
              ),
            ),
            Expanded(
              child: CustomOutlinedButton(
                text: "lbl_cancel".tr,
                margin: EdgeInsets.only(left: 24.h),
                buttonTextStyle: CustomTextStyles.labelLargeManropePrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
