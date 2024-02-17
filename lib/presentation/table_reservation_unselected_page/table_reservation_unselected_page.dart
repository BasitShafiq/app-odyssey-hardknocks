import 'models/table_reservation_unselected_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'provider/table_reservation_unselected_provider.dart';

// ignore_for_file: must_be_immutable
class TableReservationUnselectedPage extends StatefulWidget {
  const TableReservationUnselectedPage({Key? key})
      : super(
          key: key,
        );

  @override
  TableReservationUnselectedPageState createState() =>
      TableReservationUnselectedPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TableReservationUnselectedProvider(),
      child: TableReservationUnselectedPage(),
    );
  }
}

class TableReservationUnselectedPageState
    extends State<TableReservationUnselectedPage>
    with AutomaticKeepAliveClientMixin<TableReservationUnselectedPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            children: [
              SizedBox(height: 44.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 40.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 21.h,
                        right: 13.h,
                      ),
                      child: _buildDoctorReviews(
                        context,
                        item1: "lbl_1".tr,
                        item2: "lbl_2".tr,
                        item3: "lbl_3".tr,
                      ),
                    ),
                    SizedBox(height: 49.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 21.h,
                        right: 13.h,
                      ),
                      child: _buildDoctorReviews(
                        context,
                        item1: "lbl_4".tr,
                        item2: "lbl_5".tr,
                        item3: "lbl_6".tr,
                      ),
                    ),
                    SizedBox(height: 49.v),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 21.h,
                          right: 13.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 3.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 23.v,
                              ),
                              decoration: AppDecoration.fillGray200.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder12,
                              ),
                              child: Text(
                                "lbl_7".tr,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 8.v,
                                bottom: 8.v,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 24.v,
                                    width: 14.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray200,
                                      borderRadius: BorderRadius.circular(
                                        4.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Container(
                                    height: 24.v,
                                    width: 14.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray200,
                                      borderRadius: BorderRadius.circular(
                                        4.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 14.v,
                                      width: 24.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray200,
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 14.v,
                                      width: 24.h,
                                      margin: EdgeInsets.only(left: 2.h),
                                      decoration: BoxDecoration(
                                        color: appTheme.gray200,
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 14.v,
                                      width: 24.h,
                                      margin: EdgeInsets.only(left: 2.h),
                                      decoration: BoxDecoration(
                                        color: appTheme.gray200,
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3.v),
                                Container(
                                  width: 111.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.h,
                                    vertical: 10.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillGray200.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder12,
                                  ),
                                  child: Text(
                                    "lbl_8".tr,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 14.v,
                                      width: 24.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray200,
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 14.v,
                                      width: 24.h,
                                      margin: EdgeInsets.only(left: 2.h),
                                      decoration: BoxDecoration(
                                        color: appTheme.gray200,
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 14.v,
                                      width: 24.h,
                                      margin: EdgeInsets.only(left: 2.h),
                                      decoration: BoxDecoration(
                                        color: appTheme.gray200,
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 28.h,
                                top: 8.v,
                                bottom: 8.v,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 24.v,
                                    width: 14.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray200,
                                      borderRadius: BorderRadius.circular(
                                        4.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Container(
                                    height: 24.v,
                                    width: 14.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray200,
                                      borderRadius: BorderRadius.circular(
                                        4.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 2.h,
                                top: 3.v,
                                bottom: 3.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 13.h,
                                vertical: 22.v,
                              ),
                              decoration: AppDecoration.fillGray200.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder12,
                              ),
                              child: Text(
                                "lbl_9".tr,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 39.v),
                    Opacity(
                      opacity: 0.8,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "lbl_description".tr,
                          style: CustomTextStyles.titleSmallBlack90002Bold_1,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        width: 303.h,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          right: 8.h,
                        ),
                        child: Text(
                          "msg_lorem_ipsum_dolor2".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.bodySmallBlack90002_1.copyWith(
                            height: 1.40,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Opacity(
                      opacity: 0.8,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "lbl_facilities".tr,
                          style: CustomTextStyles.labelLargeManropeBlack90002,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        right: 92.h,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCheck,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(top: 2.v),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "lbl_snack_bar".tr,
                                style: CustomTextStyles
                                    .labelMediumManropeBlack90002,
                              ),
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            width: 44.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgCheck,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                ),
                                Opacity(
                                  opacity: 0.6,
                                  child: Text(
                                    "lbl_toilet".tr,
                                    style: CustomTextStyles
                                        .labelMediumManropeBlack90002,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        right: 34.h,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCheck,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 5.h,
                                bottom: 1.v,
                              ),
                              child: Text(
                                "msg_bikes_and_car_parking".tr,
                                style: CustomTextStyles
                                    .labelMediumManropeBlack90002,
                              ),
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgCheck,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "msg_24_7_water_facility".tr,
                                style: CustomTextStyles
                                    .labelMediumManropeBlack90002,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v),
                    _buildRecentOrders(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return SizedBox(
      height: 56.v,
      width: 317.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "lbl_book_now".tr,
              style: CustomTextStyles.labelLargePoppinsWhiteA70002,
            ),
          ),
          CustomOutlinedButton(
            height: 48.v,
            width: 312.h,
            text: "msg_reserve_the_table".tr,
            buttonStyle: CustomButtonStyles.outlineBlueGray,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray10001,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDoctorReviews(
    BuildContext context, {
    required String item1,
    required String item2,
    required String item3,
  }) {
    return Container(
      width: 282.h,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 26.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup422,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            item1,
            style: theme.textTheme.labelMedium!.copyWith(
              color: appTheme.gray900,
            ),
          ),
          Spacer(
            flex: 51,
          ),
          Text(
            item2,
            style: theme.textTheme.labelMedium!.copyWith(
              color: appTheme.gray900,
            ),
          ),
          Spacer(
            flex: 48,
          ),
          Text(
            item3,
            style: theme.textTheme.labelMedium!.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ],
      ),
    );
  }
}
