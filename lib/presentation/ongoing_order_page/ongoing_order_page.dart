import '../ongoing_order_page/widgets/userprofile_item_widget.dart';
import 'models/ongoing_order_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/ongoing_order_provider.dart';

// ignore_for_file: must_be_immutable
class OngoingOrderPage extends StatefulWidget {
  const OngoingOrderPage({Key? key})
      : super(
          key: key,
        );

  @override
  OngoingOrderPageState createState() => OngoingOrderPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OngoingOrderProvider(),
      child: OngoingOrderPage(),
    );
  }
}

class OngoingOrderPageState extends State<OngoingOrderPage>
    with AutomaticKeepAliveClientMixin<OngoingOrderPage> {
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
              SizedBox(height: 22.v),
              _buildUserProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 32.h,
      ),
      child: Consumer<OngoingOrderProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 16.5.v),
                child: SizedBox(
                  width: 327.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.blueGray5001,
                  ),
                ),
              );
            },
            itemCount: provider.ongoingOrderModelObj.userprofileItemList.length,
            itemBuilder: (context, index) {
              UserprofileItemModel model =
                  provider.ongoingOrderModelObj.userprofileItemList[index];
              return UserprofileItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
