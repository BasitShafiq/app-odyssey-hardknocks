import 'models/table_reservation_selected_tab_container_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:arest/presentation/table_reservation_selected_one_page/table_reservation_selected_one_page.dart';
import 'package:arest/widgets/app_bar/appbar_leading_image.dart';
import 'package:arest/widgets/app_bar/appbar_title_image.dart';
import 'package:arest/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:arest/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/table_reservation_selected_tab_container_provider.dart';

class TableReservationSelectedTabContainerScreen extends StatefulWidget {
  const TableReservationSelectedTabContainerScreen({Key? key})
      : super(key: key);

  @override
  TableReservationSelectedTabContainerScreenState createState() =>
      TableReservationSelectedTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TableReservationSelectedTabContainerProvider(),
        child: TableReservationSelectedTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class TableReservationSelectedTabContainerScreenState
    extends State<TableReservationSelectedTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildMegaphoneStack(context),
                    SizedBox(
                        height: 676.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              TableReservationSelectedOnePage.builder(context),
                              TableReservationSelectedOnePage.builder(context)
                            ]))
                  ])),
            )));
  }

  /// Section Widget
  Widget _buildMegaphoneStack(BuildContext context) {
    return SizedBox(
        height: 195.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroupTeal900195x354,
              height: 195.v,
              width: 354.h,
              alignment: Alignment.centerRight),
          CustomAppBar(
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
              styleType: Style.bgShadow),
          Container(
              height: 34.v,
              width: 265.h,
              margin: EdgeInsets.only(bottom: 27.v),
              decoration: BoxDecoration(
                  color: appTheme.blueGray50,
                  borderRadius: BorderRadius.circular(16.h)),
              child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.blueGray50,
                  labelStyle: TextStyle(
                      fontSize: 12.230768203735352.fSize,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400),
                  unselectedLabelColor: appTheme.teal900,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 12.230768203735352.fSize,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400),
                  indicator: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(16.h)),
                  tabs: [
                    Tab(child: Text("lbl_main_room".tr)),
                    Tab(child: Text("lbl_open_space".tr))
                  ]))
        ]));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}
