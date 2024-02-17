import '../models/menulist_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenulistItemWidget extends StatelessWidget {
  MenulistItemWidget(
    this.menulistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MenulistItemModel menulistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 195.v,
        width: 354.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: menulistItemModelObj?.maximizeImage,
              height: 6.v,
              width: 71.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 12.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.televisionImage,
              height: 60.v,
              width: 73.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 74.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.favoriteImage,
              height: 13.v,
              width: 10.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 100.h,
                top: 23.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.settingsImage,
              height: 11.adaptSize,
              width: 11.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 112.h,
                top: 36.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage,
              height: 5.adaptSize,
              width: 5.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 94.h,
                top: 24.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.contrastImage,
              height: 6.adaptSize,
              width: 6.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 109.h,
                top: 32.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage1,
              height: 5.adaptSize,
              width: 5.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 122.h,
                top: 44.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage2,
              height: 5.adaptSize,
              width: 5.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 87.h,
                top: 27.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.settingsImage1,
              height: 8.v,
              width: 12.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 97.h,
                top: 16.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.arrowUpImage,
              height: 9.adaptSize,
              width: 9.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 97.h,
                top: 30.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.maximizeImage1,
              height: 33.v,
              width: 25.h,
              alignment: Alignment.topRight,
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.settingsImage2,
              height: 62.v,
              width: 77.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 110.h,
                top: 4.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.mobileImage,
              height: 6.v,
              width: 44.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 83.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.chickenBurgerImage,
              height: 45.v,
              width: 15.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 30.v),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage3,
              height: 6.v,
              width: 3.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 53.v),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.closeImage,
              height: 27.v,
              width: 10.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 42.v),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage4,
              height: 49.v,
              width: 54.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 38.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage5,
              height: 13.v,
              width: 15.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 67.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.arrowUpImage1,
              height: 10.v,
              width: 9.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 88.v,
                right: 64.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.userImage,
              height: 8.v,
              width: 10.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 80.v,
                right: 65.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.settingsImage3,
              height: 51.v,
              width: 47.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 41.v,
                right: 140.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage6,
              height: 2.adaptSize,
              width: 2.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 62.v,
                right: 152.h,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 62.v,
                  right: 157.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: menulistItemModelObj?.vectorImage7,
                      height: 2.v,
                      width: 1.h,
                    ),
                    CustomImageView(
                      imagePath: menulistItemModelObj?.vectorImage8,
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                      margin: EdgeInsets.only(left: 3.h),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage9,
              height: 2.adaptSize,
              width: 2.adaptSize,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 65.v),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 181.h,
                  top: 50.v,
                  right: 168.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: menulistItemModelObj?.vectorImage10,
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                      alignment: Alignment.centerRight,
                    ),
                    SizedBox(height: 2.v),
                    CustomImageView(
                      imagePath: menulistItemModelObj?.vectorImage11,
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                    ),
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: menulistItemModelObj?.vectorImage12,
                      height: 1.v,
                      width: 2.h,
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 188.h,
                  top: 49.v,
                  right: 155.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: menulistItemModelObj?.vectorImage13,
                      height: 1.adaptSize,
                      width: 1.adaptSize,
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(height: 2.v),
                    CustomImageView(
                      imagePath: menulistItemModelObj?.vectorImage14,
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                      margin: EdgeInsets.only(right: 3.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: menulistItemModelObj?.vectorImage15,
                            height: 2.adaptSize,
                            width: 2.adaptSize,
                          ),
                          CustomImageView(
                            imagePath: menulistItemModelObj?.vectorImage16,
                            height: 2.v,
                            width: 1.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage17,
              height: 2.v,
              width: 1.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 53.v,
                right: 166.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage18,
              height: 2.adaptSize,
              width: 2.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 67.v,
                right: 164.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage19,
              height: 1.adaptSize,
              width: 1.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 66.v,
                right: 158.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.cloudImage,
              height: 30.v,
              width: 70.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 19.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage20,
              height: 39.v,
              width: 59.h,
              alignment: Alignment.topCenter,
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.cloudImage1,
              height: 19.v,
              width: 28.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 10.v),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.cloudImage2,
              height: 19.v,
              width: 28.h,
              alignment: Alignment.topCenter,
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.settingsImage4,
              height: 71.v,
              width: 63.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 1.v,
                right: 90.h,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 35.v,
                  right: 116.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: menulistItemModelObj?.chartImage,
                      height: 11.v,
                      width: 9.h,
                      margin: EdgeInsets.only(top: 7.v),
                    ),
                    CustomImageView(
                      imagePath: menulistItemModelObj?.userImage1,
                      height: 9.v,
                      width: 7.h,
                      margin: EdgeInsets.only(bottom: 9.v),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage21,
              height: 7.v,
              width: 5.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 27.v,
                right: 109.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.cloudImage3,
              height: 50.v,
              width: 55.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 10.h,
                bottom: 32.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.chartImage1,
              height: 15.v,
              width: 16.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 38.h,
                bottom: 46.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.userImage2,
              height: 9.v,
              width: 7.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 31.h,
                bottom: 60.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.profileImage,
              height: 13.v,
              width: 10.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 46.h,
                bottom: 58.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.chartImage2,
              height: 8.v,
              width: 7.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 40.h,
                bottom: 63.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage22,
              height: 4.adaptSize,
              width: 4.adaptSize,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 44.h,
                bottom: 57.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.userImage3,
              height: 57.v,
              width: 38.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 62.v),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.chartImage3,
              height: 20.v,
              width: 23.h,
              alignment: Alignment.centerRight,
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.settingsImage5,
              height: 23.v,
              width: 19.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 78.v,
                right: 8.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.cloudImage4,
              height: 10.v,
              width: 8.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 84.v),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage23,
              height: 3.adaptSize,
              width: 3.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 89.v),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage24,
              height: 3.adaptSize,
              width: 3.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 92.v,
                right: 4.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.arrowUpImage2,
              height: 40.v,
              width: 59.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 41.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage25,
              height: 9.v,
              width: 11.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 7.v,
                right: 71.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage26,
              height: 9.adaptSize,
              width: 9.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 14.v,
                right: 65.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.settingsImage6,
              height: 58.v,
              width: 57.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 31.v),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.cutImage,
              height: 64.v,
              width: 50.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 38.v),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.cloudImage5,
              height: 55.v,
              width: 50.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 10.v),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.arrowUpImage3,
              height: 16.v,
              width: 22.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 19.v,
                right: 16.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage27,
              height: 7.v,
              width: 8.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 29.v,
                right: 13.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.userImage4,
              height: 9.v,
              width: 10.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 26.v,
                right: 19.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage28,
              height: 3.adaptSize,
              width: 3.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 27.v,
                right: 30.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.inboxImage,
              height: 10.v,
              width: 7.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 29.v,
                right: 36.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.chartImage4,
              height: 8.v,
              width: 11.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 39.v,
                right: 25.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage29,
              height: 3.v,
              width: 5.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 39.v,
                right: 20.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.offerImage,
              height: 51.v,
              width: 54.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 32.v,
                right: 52.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.profileImage1,
              height: 14.v,
              width: 17.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 43.v,
                right: 76.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.userImage5,
              height: 8.v,
              width: 6.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 62.v,
                right: 77.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.trophyImage,
              height: 12.v,
              width: 8.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 51.v,
                right: 91.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.arrowUpImage4,
              height: 7.v,
              width: 8.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 60.v,
                right: 85.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage30,
              height: 4.v,
              width: 5.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 53.v,
                right: 85.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.offerImage1,
              height: 59.v,
              width: 52.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 56.v,
                right: 98.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.contrastImage1,
              height: 11.adaptSize,
              width: 11.adaptSize,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 121.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.contrastImage2,
              height: 11.v,
              width: 10.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 75.v,
                right: 109.h,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.userImage6,
              height: 6.adaptSize,
              width: 6.adaptSize,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 130.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.airplaneImage,
              height: 8.v,
              width: 15.h,
              alignment: Alignment.topRight,
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.fireImage,
              height: 11.v,
              width: 64.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 112.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.vectorImage31,
              height: 1.v,
              width: 3.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 141.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.televisionImage1,
              height: 70.v,
              width: 9.h,
              alignment: Alignment.centerRight,
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.maximizeImage2,
              height: 16.v,
              width: 55.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 104.h),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.fileImage,
              height: 42.v,
              width: 38.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 82.h,
                bottom: 65.v,
              ),
            ),
            CustomImageView(
              imagePath: menulistItemModelObj?.fireImage1,
              height: 17.v,
              width: 13.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 98.h,
                bottom: 79.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
