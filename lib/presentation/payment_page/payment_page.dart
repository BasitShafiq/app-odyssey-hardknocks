import 'models/payment_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:arest/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'provider/payment_provider.dart';

// ignore_for_file: must_be_immutable
class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key})
      : super(
          key: key,
        );

  @override
  PaymentPageState createState() => PaymentPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentProvider(),
      child: PaymentPage(),
    );
  }
}

class PaymentPageState extends State<PaymentPage>
    with AutomaticKeepAliveClientMixin<PaymentPage> {
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
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlack,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    right: 39.h,
                  ),
                  child: Column(
                    children: [
                      _buildNoMastercardSection(context),
                      SizedBox(height: 15.v),
                      CustomOutlinedButton(
                        onPressed: () {
                          NavigatorService.pushNamed(
                            AppRoutes.addCardScreen,
                          );
                        },
                        height: 62.v,
                        text: "lbl_add_new".tr.toUpperCase(),
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 12.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPlus,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.outlineGrayTL10,
                        buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                      ),
                      SizedBox(height: 47.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 5.v,
                                bottom: 1.v,
                              ),
                              child: Text(
                                "lbl_total2".tr.toUpperCase(),
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: Text(
                                "lbl_rs_2502".tr,
                                style: CustomTextStyles.titleMediumTeal900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 37.v),
                      CustomElevatedButton(
                        onPressed: () {
                          NavigatorService.pushNamed(
                            AppRoutes.foodOrderCompleteScreen,
                          );
                        },
                        height: 46.v,
                        text: "lbl_pay_and_confirm".tr,
                        margin: EdgeInsets.symmetric(horizontal: 13.h),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNoMastercardSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.fillGray10002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img42,
            height: 117.v,
            width: 200.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 13.h),
          ),
          SizedBox(height: 13.v),
          Text(
            "msg_no_master_card_added".tr,
            style: CustomTextStyles.titleMediumBluegray90001,
          ),
          SizedBox(height: 5.v),
          Opacity(
            opacity: 0.7,
            child: SizedBox(
              width: 257.h,
              child: Text(
                "msg_you_can_add_a_mastercard".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumBluegray90099.copyWith(
                  height: 1.60,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
