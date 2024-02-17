import '../order_history_one_page/widgets/userprofile1_item_widget.dart';
import 'models/order_history_one_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/order_history_one_provider.dart';

// ignore_for_file: must_be_immutable
class OrderHistoryOnePage extends StatefulWidget {
  const OrderHistoryOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  OrderHistoryOnePageState createState() => OrderHistoryOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrderHistoryOneProvider(),
      child: OrderHistoryOnePage(),
    );
  }
}

class OrderHistoryOnePageState extends State<OrderHistoryOnePage>
    with AutomaticKeepAliveClientMixin<OrderHistoryOnePage> {
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
      child: Consumer<OrderHistoryOneProvider>(
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
                provider.orderHistoryOneModelObj.userprofile1ItemList.length,
            itemBuilder: (context, index) {
              Userprofile1ItemModel model =
                  provider.orderHistoryOneModelObj.userprofile1ItemList[index];
              return Userprofile1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
