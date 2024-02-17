import '../models/restaurantcardlist2_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Restaurantcardlist2ItemWidget extends StatelessWidget {
  Restaurantcardlist2ItemWidget(
    this.restaurantcardlist2ItemModelObj, {
    Key? key,
    this.onTapRestaurantCard,
  }) : super(
          key: key,
        );

  Restaurantcardlist2ItemModel restaurantcardlist2ItemModelObj;

  VoidCallback? onTapRestaurantCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRestaurantCard!.call();
      },
      child: Container(
        height: 125.v,
        width: 313.h,
        decoration: AppDecoration.outlineBlack900022,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 124.v,
                width: 312.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA70002,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black90002.withOpacity(0.05),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 107.h,
                  top: 11.v,
                  right: 87.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        restaurantcardlist2ItemModelObj.restaurantName!,
                        style: CustomTextStyles.titleSmallBlack90002Bold,
                      ),
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        restaurantcardlist2ItemModelObj.location!,
                        style: CustomTextStyles.bodySmallBlack90002,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 197.h,
                margin: EdgeInsets.only(
                  right: 8.h,
                  bottom: 36.v,
                ),
                child: Text(
                  restaurantcardlist2ItemModelObj.loremIpsumDolor!,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallBlack9000210.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  right: 22.h,
                ),
                child: Text(
                  restaurantcardlist2ItemModelObj.thirtyFive!,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.poppinsWhiteA70002,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrame20,
              height: 4.v,
              width: 5.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 13.v,
                right: 14.h,
              ),
            ),
            CustomImageView(
              imagePath: restaurantcardlist2ItemModelObj?.image,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                8.h,
              ),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 9.h,
                top: 9.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 16.v,
                right: 25.h,
              ),
              child: CustomRatingBar(
                alignment: Alignment.topRight,
                ignoreGestures: true,
                initialRating: 4,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(14.h, 98.v, 22.h, 12.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPlaceholder2,
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 3.v,
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          restaurantcardlist2ItemModelObj.distance!,
                          style: CustomTextStyles
                              .labelMediumManropeBlack90002Medium,
                        ),
                      ),
                    ),
                    Spacer(),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        restaurantcardlist2ItemModelObj.crowded!,
                        style:
                            CustomTextStyles.labelMediumManropeBlack90002Medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
