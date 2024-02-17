// import 'package:emart_app/consts/lists.dart';
// import 'package:emart_app/views/auth_screen/signup_screen.dart';
// import 'package:emart_app/views/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:resturant/OnBoarding/login.dart';
import 'package:resturant/OnBoarding/signUp.dart';
import 'package:resturant/consts/consts.dart';
import 'package:resturant/consts/strings.dart';
import 'package:resturant/widgets_common/signup_textfield.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:resturant/widgets_common/our_button.dart';
import 'package:resturant/widgets_common/our_button2.dart';
import 'package:resturant/widgets_common/custom_text_field.dart';
import 'package:get/get.dart';
import 'package:resturant/controller/auth_controller.dart';
// import 'package:resturant/widgets_common/checkout_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var loading = false.obs;
  var controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // (context.screenHeight * 0.05).heightBox,
                // Center(
                //     //   child: Image.asset(
                //     // 'assets/images/bgImg.PNG',
                //     // fit: BoxFit.fill,
                //     ),
                (context.screenHeight * 0.2).heightBox,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 181,
                      fit: BoxFit.fill,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                  ],
                ),
                (context.screenHeight * 0.03).heightBox,
                "ARestro"
                    .text
                    .color(Color.fromARGB(255, 10, 10, 10))
                    .semiBold
                    .fontFamily(semibold)
                    .size(20)
                    .make(),

                (context.screenHeight * 0.05).heightBox,

                // Obx(() =>
                Column(
                  children: [
                    ourButton(
                        title: "Log In",
                        color: greenColor,
                        textColor: whiteColor,
                        onPress: () async {
                          Get.to(() => const LoginScreen());
                        }).box.width(context.screenWidth - 50).make(),
                    25.heightBox,
                    ourButton(
                        title: "Sign Up",
                        color: whiteColor,
                        textColor: darkFontGrey,
                        onPress: () async {
                          Get.to(() => const SignUpScreen());
                        }).box.shadowSm.width(context.screenWidth - 50).make(),
                    (context.screenHeight * 0.3).heightBox,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Remember Password? "
                                .text
                                .color(darkFontGrey)
                                .fontFamily(semibold)
                                .size(12)
                                .semiBold
                                .make(),
                            5.widthBox,
                            "Login "
                                .text
                                .underline
                                .color(Colors.blue)
                                .fontFamily(semibold)
                                .size(12)
                                .semiBold
                                .make()
                                .onTap(() {
                              Get.to(() => LoginScreen());
                            })
                          ],
                        ),
                      ],
                    ),
                    5.widthBox,
                    15.heightBox,
                  ],
                ).box.padding(EdgeInsets.all(25)).make()
                //)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
