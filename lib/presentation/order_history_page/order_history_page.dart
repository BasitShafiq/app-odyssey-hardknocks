import '../order_history_page/widgets/userprofile2_item_widget.dart';
import 'models/order_history_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:arest/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/order_history_provider.dart';

// ignore_for_file: must_be_immutable
class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrderHistoryPageState createState() => OrderHistoryPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrderHistoryProvider(),
      child: OrderHistoryPage(),
    );
  }
}

class OrderHistoryPageState extends State<OrderHistoryPage>
    with AutomaticKeepAliveClientMixin<OrderHistoryPage> {
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
      child: Consumer<OrderHistoryProvider>(
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
                provider.orderHistoryModelObj.userprofile2ItemList.length,
            itemBuilder: (context, index) {
              Userprofile2ItemModel model =
                  provider.orderHistoryModelObj.userprofile2ItemList[index];
              return Userprofile2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
