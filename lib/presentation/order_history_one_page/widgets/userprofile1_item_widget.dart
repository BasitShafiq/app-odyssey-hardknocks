import '../models/userprofile1_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

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
                    userprofile1ItemModelObj.nameText!,
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
                          userprofile1ItemModelObj.priceText!,
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
                            userprofile1ItemModelObj.itemsText!,
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
                userprofile1ItemModelObj.imageText!,
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
              child: CustomOutlinedButton(
                text: "lbl_track_order".tr,
                margin: EdgeInsets.only(right: 24.h),
                buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
              ),
            ),
            Expanded(
              child: CustomOutlinedButton(
                text: "lbl_track_order".tr,
                margin: EdgeInsets.only(left: 24.h),
                buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
