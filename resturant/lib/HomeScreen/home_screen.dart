import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturant/consts/consts.dart';
import 'package:resturant/controller/home_controller.dart';
import 'package:resturant/widgets_common/custom_text_field.dart';
import 'package:resturant/widgets_common/map_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              (context.screenHeight * 0.07).heightBox,
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/logo.PNG",
                        width: 80,
                        height: 60,
                        fit: BoxFit.fill,
                      ).box.roundedFull.shadowLg.clip(Clip.antiAlias).make(),
                    ],
                  ),
                  5.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          "Hi Alexandra"
                              .text
                              .size(17)
                              .color(Color.fromARGB(255, 87, 87, 87))
                              .bold
                              .make(),
                          5.widthBox,
                          Image.asset(
                            "assets/images/handImg.PNG",
                            height: 25,
                            width: 25,
                          )
                        ],
                      ),
                      "What you want to eat today!"
                          .text
                          .size(11)
                          .color(Colors.grey)
                          .semiBold
                          .make(),
                    ],
                  )),
                  IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings_outlined,
                            color: redColor,
                          ))
                      .box
                      .size(45, 45)
                      .white
                      .roundedFull
                      .border(color: textfieldGrey)
                      .shadowSm
                      .make()
                ],
              ).box.padding(EdgeInsets.symmetric(horizontal: 10)).make(),
              20.heightBox,
              // SizedBox(
              //   height: 40,
              //   width: context.screenWidth * 0.5,
              //   child: SearchTextField(),
              // ),
              10.heightBox,
              Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.grey.withOpacity(0.3), // Shadow color
                              //spreadRadius: 1,
                              blurRadius: 15,
                              offset: Offset(2, 2), // Shadow offset
                            ),
                          ],
                        ),
                        child: customTextField(
                          title: "Search here",
                          obsecureText: false,
                          controller: controller.homeController,
                          icon: const Icon(
                            Icons.search,
                            color: redColor,
                          ),
                        ),
                      ),
                    ),
                    (context.screenWidth * 0.01).widthBox,
                    Image.asset(
                      "assets/images/icFilter.PNG",
                      height: 45,
                      width: 45,
                    )
                        .box
                        //.padding(EdgeInsets.symmetric(horizontal: 12))
                        .margin(EdgeInsets.all(10))
                        .clip(Clip.antiAlias)
                        .shadow
                        .rounded
                        .make()
                  ]),
              20.heightBox,
              Column(children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                    4,
                    (index) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/home2.PNG",
                          height: 30,
                          width: 30,
                          fit: BoxFit.fill,
                        ).box.clip(Clip.antiAlias).roundedFull.make(),
                        "Mexican".text.size(12).white.semiBold.makeCentered()
                      ],
                    )
                        .box
                        .color(redColor)
                        .shadowLg
                        .size(120, 55)
                        .roundedLg
                        .margin(const EdgeInsets.all(4))
                        .padding(EdgeInsets.symmetric(horizontal: 3))
                        //.margin(const EdgeInsets.symmetric(horizontal: 3))
                        .make(),
                  )),
                ),
                //5.heightBox,
                GestureDetector(
                  child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 5,
                              crossAxisSpacing: 8,
                              mainAxisExtent: 250,
                              crossAxisCount: 1),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/home1.PNG",
                              width: context.screenWidth,
                              height: 150,
                              fit: BoxFit.fill,
                            ).box.rounded.shadow.clip(Clip.antiAlias).make(),
                            10.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "Tasty Tacos"
                                    .text
                                    .size(15)
                                    .color(Color.fromARGB(255, 87, 87, 87))
                                    .semiBold
                                    .make(),
                                "(4.5)"
                                    .text
                                    .color(redColor)
                                    .bold
                                    .size(14)
                                    .make()
                              ],
                            ),
                            5.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "Mexican"
                                    .text
                                    .size(11)
                                    .color(Colors.grey)
                                    .semiBold
                                    .make(),
                                10.widthBox,
                                "(Starting in 10 min)"
                                    .text
                                    .size(10)
                                    .color(Color.fromARGB(255, 87, 87, 87))
                                    .semiBold
                                    .make(),
                                "2.5 km away"
                                    .text
                                    .size(11)
                                    .color(Colors.grey)
                                    .semiBold
                                    .make(),
                              ],
                            )
                          ],
                        )
                            .box
                            .white
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .roundedSM
                            .shadowSm
                            .padding(const EdgeInsets.all(8))
                            .make()
                            .onTap(() {
                          //Get.to(() => const TruckScreen());
                        });
                      }),
                ),
              ])
            ],
          )),
    );
  }
}
