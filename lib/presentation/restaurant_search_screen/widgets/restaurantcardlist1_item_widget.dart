import '../models/restaurantcardlist1_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Restaurantcardlist1ItemWidget extends StatelessWidget {
  Restaurantcardlist1ItemWidget(
    this.restaurantcardlist1ItemModelObj, {
    Key? key,
    this.onTapRestaurantCard,
  }) : super(
          key: key,
        );

  Restaurantcardlist1ItemModel restaurantcardlist1ItemModelObj;

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
          alignment: Alignment.center,
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
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  right: 14.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath:
                              restaurantcardlist1ItemModelObj?.restaurantImage,
                          height: 80.adaptSize,
                          width: 80.adaptSize,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                  opacity: 0.7,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      restaurantcardlist1ItemModelObj
                                          .restaurantName!,
                                      style: CustomTextStyles
                                          .titleSmallBlack90002Bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 15.v,
                                  width: 47.h,
                                  margin: EdgeInsets.only(
                                    left: 18.h,
                                    bottom: 7.v,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          restaurantcardlist1ItemModelObj
                                              .rating!,
                                          style: CustomTextStyles
                                              .poppinsWhiteA70002,
                                        ),
                                      ),
                                      CustomRatingBar(
                                        alignment: Alignment.bottomLeft,
                                        ignoreGestures: true,
                                        initialRating: 4,
                                      ),
                                    ],
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFrame20,
                                  height: 4.v,
                                  width: 5.h,
                                  margin: EdgeInsets.only(
                                    left: 2.h,
                                    top: 2.v,
                                    bottom: 13.v,
                                  ),
                                ),
                              ],
                            ),
                            Opacity(
                              opacity: 0.7,
                              child: Text(
                                restaurantcardlist1ItemModelObj.location!,
                                style: CustomTextStyles.bodySmallBlack90002,
                              ),
                            ),
                            SizedBox(height: 4.v),
                            SizedBox(
                              width: 185.h,
                              child: Text(
                                restaurantcardlist1ItemModelObj.description!,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack9000210
                                    .copyWith(
                                  height: 1.40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        right: 8.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPlaceholder2,
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            margin: EdgeInsets.only(
                              top: 2.v,
                              bottom: 4.v,
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                restaurantcardlist1ItemModelObj.distanceText!,
                                style: CustomTextStyles
                                    .labelMediumManropeBlack90002Medium,
                              ),
                            ),
                          ),
                          Spacer(),
                          Opacity(
                            opacity: 0.5,
                            child: Text(
                              restaurantcardlist1ItemModelObj.crowded!,
                              style: CustomTextStyles
                                  .labelMediumManropeBlack90002Medium,
                            ),
                          ),
                        ],
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
