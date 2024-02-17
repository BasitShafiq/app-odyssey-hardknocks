// import 'package:taco/consts/consts.dart';
// import 'package:taco/views/home_screen/truck_info/popular/popular_screen.dart';
// import 'package:taco/views/more_screen/more_screen.dart';
// import 'package:taco/views/checkout/checkout_scree.dart';
// import 'package:taco/views/featured/featured_screen.dart';
// import 'package:taco/views/find_screen/find_screen.dart';
import 'package:resturant/HomeScreen/home_screen.dart';
import 'package:resturant/SearchScreen/search_screen.dart';
import 'package:resturant/CartScreen/cart_screen.dart';

// import 'package:taco/views/orders_screen/orders_screen.dart';
// // import 'package:taco/widgets_common/custom_text_field.dart';
// import 'package:taco/controller/home_controller.dart';
// import 'package:emart_app/views/cart_screen/cart_screen.dart';
// import 'package:emart_app/views/categories_screen/categories_screen.dart';
// import 'package:emart_app/views/home_screen/home_screen.dart';
// import 'package:emart_app/views/profile_screen/profile_screen.dart';

// import 'package:taco/widgets_common/exit_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturant/consts/consts.dart';
import 'package:resturant/controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeController());
    var navbarItem = [
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
          color: textfieldGrey,
        ),
        label: "Home",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          color: textfieldGrey,
        ),
        label: "Search",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.shop,
          color: redColor,
        ),
        label: "Cart",
      ),
    ];

    //List 2
    var navBody = [
      const HomeScreen(),
      //const SearchScreen(),
      // const CartScreen(),
    ];

    //Main
    return WillPopScope(
      onWillPop: () async {
        // showDialog(
        //     barrierDismissible: false,
        //     context: context,
        //     builder: (context) {
        //       return getExitButtonDialog(context);
        //     });

        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            Obx(
              () => Expanded(
                  child:
                      navBody.elementAt(homeController.currenItemIndex.value)),
            )
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: homeController.currenItemIndex.value,
            items: navbarItem,
            selectedItemColor: redColor,
            backgroundColor: whiteColor,
            selectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              homeController.currenItemIndex.value = value;
            },
          ),
        ),
      ),
    );
  }
}
