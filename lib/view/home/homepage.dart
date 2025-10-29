import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:clickcart/view/home/widget/Allitem/Allitem.dart';
import 'package:clickcart/view/home/widget/fashiontab/fashiontab.dart';
import 'package:clickcart/view/home/widget/homedecotab/homedecotab.dart';
import 'package:clickcart/view/home/widget/laptoptab/laptoptab.dart';
import 'package:clickcart/view/home/widget/mobiletab/mobiletab.dart';
import 'package:clickcart/view/home/widget/notification.dart';
import 'package:clickcart/view/home/widget/searchbarpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utilitis/textstyel.dart';
import 'moretab/moreproductmain.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  List<String> image = ["assets/onboarding/onboardingfirstimage.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 28,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/logo/profile.png",
                        fit: BoxFit.cover,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ),
                  SizedBox(width: Get.width * 0.04),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good morning",
                        style: OnboardingText.caption,
                      ),
                      const Text(
                        "Deependra singh",
                        style: commoantext.maincommantext,
                      )
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Get.to(NotificationScreen());
                      },
                      icon: Icon(
                        Icons.notifications_none_rounded,
                        size: 28,
                      ))
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              SearchBarPage(),
              SizedBox(height: Get.height * 0.01),
              const Text(
                "Special Offer",
                style: CommonTextStyle.bold,
              ),
              SizedBox(height: Get.height * 0.01),
              CarouselSlider(
                options: CarouselOptions(
                  height: Get.height * 0.18,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.4,
                  scrollDirection: Axis.horizontal,
                ),
                items: image
                    .map((item) => Container(
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              item,
                              fit: BoxFit.fill,
                              height: 180,
                              width: double.infinity,
                            ),
                          )),
                        ))
                    .toList(),
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: CommonTextStyle.bold,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(Moreproductmain());
                    },
                    child: const Text(
                      "See All",
                      style: CommonTextStyle.semiBold,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Expanded(
                child: DefaultTabController(
                    length: 5,
                    animationDuration: Duration(milliseconds: 500),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          child: ButtonsTabBar(
                            splashColor: Color(0xFF00695C),
                            backgroundColor: Color(0xFF00695C),
                            elevation: 3,
                            unselectedBackgroundColor: Color(0xFFFFCC80),
                            radius: 10,
                            height: 60,
                            width: 72,
                            contentCenter: true,
                            tabs: [
                              Tab(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.checkroom,
                                          size: 28, color: Colors.white),
                                      SizedBox(height: 2),
                                      Text(
                                        "Fashion",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Tab(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home_outlined,
                                        size: 28, color: Colors.pink),
                                    SizedBox(height: 2),
                                    Text(
                                      "Home deco",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Tab(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.laptop_chromebook,
                                        size: 28, color: Colors.black),
                                    const SizedBox(height: 2),
                                    Text(
                                      "Laptop",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Tab(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.mobile_screen_share_outlined,
                                        size: 28, color: Colors.blue),
                                    const SizedBox(height: 2),
                                    Text(
                                      "Mobile",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Tab(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.local_grocery_store_outlined,
                                        size: 28, color: Colors.deepOrange),
                                    const SizedBox(height: 2),
                                    Text(
                                      "All item",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Fashiontab(),
                              Decorationpage(),
                              LaptopTab(),
                              MobileTab(),
                              AllTab(),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
