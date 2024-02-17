import 'models/add_card_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/core/utils/validation_functions.dart';
import 'package:arest/presentation/dashboard_one_page/dashboard_one_page.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:arest/widgets/custom_bottom_bar.dart';
import 'package:arest/widgets/custom_elevated_button.dart';
import 'package:arest/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/add_card_provider.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  AddCardScreenState createState() => AddCardScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AddCardProvider(), child: AddCardScreen());
  }
}

// ignore_for_file: must_be_immutable
class AddCardScreenState extends State<AddCardScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                //width: SizeUtils.width,
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.h, vertical: 23.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_add_card".tr,
                                  style: CustomTextStyles
                                      .headlineMediumBlack90002),
                              SizedBox(height: 15.v),
                              Text("msg_card_holder_name".tr.toUpperCase(),
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 10.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 15.h),
                                  child: Selector<AddCardProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.nameController,
                                      builder:
                                          (context, nameController, child) {
                                        return CustomTextFormField(
                                            controller: nameController,
                                            hintText: "msg_bibhushan_saakha".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeBluegray90001_1,
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .fillGray,
                                            fillColor: appTheme.gray10001);
                                      })),
                              SizedBox(height: 25.v),
                              Text("lbl_card_number".tr.toUpperCase(),
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 10.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 15.h),
                                  child: Selector<AddCardProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.cardNumberController,
                                      builder: (context, cardNumberController,
                                          child) {
                                        return CustomTextFormField(
                                            controller: cardNumberController,
                                            hintText: "msg_2134".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeBluegray90001_1,
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .fillGrayTL10,
                                            fillColor: appTheme.gray10001);
                                      })),
                              SizedBox(height: 25.v),
                              _buildDate(context),
                              Spacer(),
                              SizedBox(height: 14.v),
                              CustomElevatedButton(
                                  height: 46.v,
                                  text: "msg_add_and_make_payment".tr,
                                  margin:
                                      EdgeInsets.only(left: 15.h, right: 14.h),
                                  alignment: Alignment.center)
                            ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMegaphone,
            margin: EdgeInsets.only(left: 33.h, top: 63.v, bottom: 19.v)),
        centerTitle: true,
        title: Padding(
            padding: EdgeInsets.only(top: 56.v, bottom: 13.v),
            child: Row(children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgLock,
                  margin: EdgeInsets.only(bottom: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_ar".tr,
                            style: CustomTextStyles.titleLargeff009944),
                        TextSpan(
                            text: "lbl_estro".tr,
                            style: CustomTextStyles.titleLargeff004422)
                      ]),
                      textAlign: TextAlign.left))
            ])),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse4,
              margin: EdgeInsets.fromLTRB(34.h, 56.v, 34.h, 12.v),
              onTap: () {
                onTapCircleImage(context);
              })
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildExpireDate(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 13.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_expire_date".tr.toUpperCase(),
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 10.v),
              Selector<AddCardProvider, TextEditingController?>(
                  selector: (context, provider) => provider.dateController,
                  builder: (context, dateController, child) {
                    return CustomTextFormField(
                        width: 150.h,
                        controller: dateController,
                        hintText: "lbl_mm_yyyy".tr,
                        hintStyle: CustomTextStyles.bodyLargeBluegray90001,
                        borderDecoration: TextFormFieldStyleHelper.fillGray,
                        fillColor: appTheme.gray10001);
                  })
            ])));
  }

  /// Section Widget
  Widget _buildCvc(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 13.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_cvc".tr.toUpperCase(),
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 10.v),
              Selector<AddCardProvider, TextEditingController?>(
                  selector: (context, provider) => provider.languageController,
                  builder: (context, languageController, child) {
                    return CustomTextFormField(
                        width: 150.h,
                        controller: languageController,
                        hintText: "lbl".tr,
                        hintStyle: CustomTextStyles.bodyLargeBluegray90001,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: true,
                        borderDecoration: TextFormFieldStyleHelper.fillGray,
                        fillColor: appTheme.gray10001);
                  })
            ])));
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 15.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildExpireDate(context), _buildCvc(context)]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Cart:
        return AppRoutes.dashboardOnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.dashboardOnePage:
        return DashboardOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}
