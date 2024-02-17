import '../ongoing_order_one_page/widgets/userprofile3_item_widget.dart';
import 'models/ongoing_order_one_model.dart';
import 'models/userprofile3_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/ongoing_order_one_provider.dart';

// ignore_for_file: must_be_immutable
class OngoingOrderOnePage extends StatefulWidget {
  const OngoingOrderOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  OngoingOrderOnePageState createState() => OngoingOrderOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OngoingOrderOneProvider(),
      child: OngoingOrderOnePage(),
    );
  }
}

class OngoingOrderOnePageState extends State<OngoingOrderOnePage>
    with AutomaticKeepAliveClientMixin<OngoingOrderOnePage> {
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
          decoration: AppDecoration.fillWhiteA,
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
      child: Consumer<OngoingOrderOneProvider>(
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
            itemCount:
                provider.ongoingOrderOneModelObj.userprofile3ItemList.length,
            itemBuilder: (context, index) {
              Userprofile3ItemModel model =
                  provider.ongoingOrderOneModelObj.userprofile3ItemList[index];
              return Userprofile3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
