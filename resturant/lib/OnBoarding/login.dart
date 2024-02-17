// import 'package:emart_app/consts/lists.dart';
// import 'package:emart_app/views/auth_screen/signup_screen.dart';
// import 'package:emart_app/views/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:resturant/HomeScreen/home.dart';
import 'package:resturant/OnBoarding/forget_password.dart';
import 'package:resturant/OnBoarding/signUp.dart';
import 'package:resturant/consts/consts.dart';
import 'package:resturant/consts/strings.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:resturant/widgets_common/our_button.dart';
import 'package:resturant/widgets_common/our_button2.dart';
import 'package:resturant/widgets_common/custom_text_field.dart';
import 'package:get/get.dart';
import 'package:resturant/controller/auth_controller.dart';
// import 'package:resturant/widgets_common/checkout_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                (context.screenHeight * 0.09).heightBox,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 120,
                      fit: BoxFit.fill,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                  ],
                ),
                (context.screenHeight * 0.03).heightBox,
                "Log In"
                    .text
                    .color(Color.fromARGB(255, 10, 10, 10))
                    .semiBold
                    .fontFamily(semibold)
                    .size(20)
                    .make(),

                // 5.heightBox,
                Obx(() => Column(
                      children: [
                        customTextField(
                            title: "User",
                            controller: controller.emailController,
                            obsecureText: false,
                            icon:
                                Icon(Icons.email_outlined, color: greenColor)),
                        15.heightBox,
                        customTextField(
                            title: password,
                            controller: controller.passwordController,
                            obsecureText: true,
                            icon: Icon(
                              Icons.lock_outline,
                              color: greenColor,
                            )),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: forgetPassword.text
                                  .fontFamily(semibold)
                                  .size(12)
                                  .color(greenColor)
                                  .make()
                                  .onTap(() {
                                Get.to(() => ForgetPasswordScreen());
                              })),
                        ),
                        5.heightBox,
                        controller.loading.value
                            ? const CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation(redColor),
                              )
                            : ourButton(
                                title: login,
                                color: greenColor,
                                textColor: whiteColor,
                                onPress: () async {
                                  Get.to(() => const Home());

                                  // controller.loading.value = true;
                                  // try {
                                  //   await controller
                                  //       .signIn(context: context)
                                  //       .then((value) {
                                  //     if (value != null) {
                                  //       VxToast.show(context,
                                  //           msg: "Login Successfully",
                                  //           showTime: 5000,
                                  //           bgColor: fontGrey,
                                  //           textColor: whiteColor);
                                  //       Get.to(() => const Home());
                                  //     } else {
                                  //       controller.loading.value = false;
                                  //     }
                                  //   });
                                  // } catch (e) {
                                  //   VxToast.show(context,
                                  //       msg: e.toString(),
                                  //       showTime: 5000,
                                  //       pdVertical: 40);
                                  // }
                                }).box.width(context.screenWidth - 50).make(),
                        40.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            "Or".text.color(darkFontGrey).make(),
                            Divider(),
                          ],
                        ),
                        10.heightBox,
                        ourButton2(
                                title: "Continue with Google",
                                icon: 'assets/images/google.png',
                                color: whiteColor,
                                textColor: darkFontGrey,
                                onPress: () {
                                  // Get.to(() => const SignUpScreen());
                                })
                            .box
                            .width(context.screenWidth - 50)
                            .make(),
                        15.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Already have an account? "
                                .text
                                .color(darkFontGrey)
                                .fontFamily(semibold)
                                .size(12)
                                .semiBold
                                .make(),
                            5.widthBox,
                            "SignUp "
                                .text
                                .color(Colors.blue)
                                .fontFamily(semibold)
                                .size(12)
                                .semiBold
                                .make()
                                .onTap(() {
                              Get.to(() => SignUpScreen());
                            })
                          ],
                        ),
                        5.widthBox,
                        15.heightBox,
                      ],
                    ).box.padding(EdgeInsets.all(25)).make())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
