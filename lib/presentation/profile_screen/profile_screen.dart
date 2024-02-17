import 'package:flutter/widgets.dart';

import 'models/profile_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:arest/widgets/custom_icon_button.dart';
import 'package:arest/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'provider/profile_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileScreenState createState() => ProfileScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      child: ProfileScreen(),
    );
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBarStack(context),
        body: SingleChildScrollView(
          child: SizedBox(
            height: SizeUtils.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroupTeal900244x242,
                  height: 244.v,
                  width: 242.h,
                  alignment: Alignment.topRight,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      right: 24.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.circleBorder52,
                          ),
                          child: Container(
                            height: 104.adaptSize,
                            width: 104.adaptSize,
                            padding: EdgeInsets.symmetric(horizontal: 5.h),
                            decoration:
                                AppDecoration.gradientGreenToGreen.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder52,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img6,
                                  height: 83.adaptSize,
                                  width: 83.adaptSize,
                                  radius: BorderRadius.circular(
                                    41.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomIconButton(
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  padding: EdgeInsets.all(6.h),
                                  decoration:
                                      IconButtonStyleHelper.outlineWhiteA,
                                  alignment: Alignment.bottomRight,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgEditWhiteA70002,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 23.v),
                        _buildPersonalColumn(context),
                        SizedBox(height: 10.v),
                        _buildContactColumn(context),
                        SizedBox(height: 19.v),
                        CustomElevatedButton(
                          height: 58.v,
                          text: "lbl_edit".tr,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumWhiteA70002,
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBarStack(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 51.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 33.h,
          top: 63.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(
          top: 56.v,
          bottom: 13.v,
        ),
        child: Row(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgLock,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_ar".tr,
                      style: CustomTextStyles.titleLargeff009944,
                    ),
                    TextSpan(
                      text: "lbl_estro".tr,
                      style: CustomTextStyles.titleLargeff004422,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse4,
          margin: EdgeInsets.fromLTRB(34.h, 56.v, 34.h, 12.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildPersonalColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_personal_info".tr,
              style: CustomTextStyles.titleMediumBlack90002ExtraBold,
            ),
          ),
          SizedBox(height: 41.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildOccupationRow(
              context,
              occupation: "lbl_your_name".tr,
              student: "msg_bibhushan_saakha".tr,
            ),
          ),
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildOccupationRow(
              context,
              occupation: "lbl_occupation".tr,
              student: "lbl_student".tr,
            ),
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildOccupationRow(
              context,
              occupation: "lbl_address".tr,
              student: "msg_koteshwor_kathmandu".tr,
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 1.v,
                  ),
                  child: Text(
                    "lbl_member".tr,
                    style: CustomTextStyles.titleSmallGray800Medium,
                  ),
                ),
                Selector<ProfileProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch,
                  builder: (context, isSelectedSwitch, child) {
                    return CustomSwitch(
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context.read<ProfileProvider>().changeSwitchBox1(value);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContactColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_contact_info".tr,
              style: CustomTextStyles.titleMediumBlack90002ExtraBold,
            ),
          ),
          SizedBox(height: 41.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildOccupationRow(
              context,
              occupation: "lbl_phone_number".tr,
              student: "lbl_977_9840103828".tr,
            ),
          ),
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildOccupationRow(
              context,
              occupation: "lbl_email".tr,
              student: "msg_bibhushansaakha_gmail_com".tr,
            ),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildOccupationRow(
    BuildContext context, {
    required String occupation,
    required String student,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            occupation,
            style: CustomTextStyles.titleSmallGray800Medium.copyWith(
              color: appTheme.gray800,
            ),
          ),
        ),
        Text(
          student,
          style: CustomTextStyles.titleSmallBlack90002Medium.copyWith(
            color: appTheme.black90002,
          ),
        ),
      ],
    );
  }
}
