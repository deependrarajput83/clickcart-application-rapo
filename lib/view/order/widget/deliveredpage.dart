import 'package:clickcart/comman/widget/canclebutton.dart';
import 'package:clickcart/comman/widget/clickbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../comman/widget/containerTwo.dart';
import '../../../controller/orderpagecontroller/orderpage.dart';
import '../../../utilitis/textstyel.dart';

class Deliverdpagescreen extends StatelessWidget {
  Deliverdpagescreen({super.key});
  RatingPageController ratingPageController = Get.put(RatingPageController());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.only(top: 18),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Column(
              children: [
                Containertwo(
                  padding: EdgeInsets.all(8),
                  height: Get.height * 0.16,
                  width: double.infinity,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 0.2),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0.1, color: Colors.white, blurRadius: 0.2)
                  ],
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          "assets/fashion/img_1.png",
                          height: Get.height * 0.14,
                          width: Get.width * 0.3,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Men outfitter T-shirt",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Text("Color:-Red"),
                              const SizedBox(width: 5),
                              Text(
                                "|",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 5),
                              Text("Size:-M"),
                              const SizedBox(width: 5),
                              Text(
                                "|",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 5),
                              Text("Qty:-1"),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "₹400",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              const SizedBox(width: 40),
                              ClickButton(
                                onTap: () {
                                  Get.bottomSheet(Containertwo(
                                    padding: EdgeInsets.all(15),
                                    height: Get.height * 1,
                                    width: double.infinity,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                    color: Colors.white,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              GestureDetector(
                                                child: Icon(Icons.clear),
                                                onTap: () {
                                                  Get.back();
                                                },
                                              ),
                                              const SizedBox(width: 98),
                                              Text(
                                                "Leave A Review",
                                                style: CommonTextStyle.bold,
                                              )
                                            ],
                                          ),
                                          const Divider(
                                            thickness: 0.5,
                                          ),
                                          const SizedBox(height: 5),
                                          Containertwo(
                                            padding: EdgeInsets.all(8),
                                            height: Get.height * 0.16,
                                            width: double.infinity,
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.grey, width: 0.2),
                                            boxShadow: [
                                              BoxShadow(
                                                  spreadRadius: 0.1,
                                                  color: Colors.white,
                                                  blurRadius: 0.2)
                                            ],
                                            child: Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  child: Image.asset(
                                                    "assets/fashion/img_1.png",
                                                    height: Get.height * 0.14,
                                                    width: Get.width * 0.3,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Men outfitter T-shirt",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 6),
                                                    Row(
                                                      children: [
                                                        Text("Color:-Red"),
                                                        SizedBox(width: 5),
                                                        Text(
                                                          "|",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        const SizedBox(
                                                            width: 5),
                                                        Text("Size:-M"),
                                                        const SizedBox(
                                                            width: 5),
                                                        Text(
                                                          "|",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(width: 5),
                                                        Text("Qty:-1"),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 8),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "₹400",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            "How is Your Order?",
                                            style: CommonTextStyle.Details,
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            "Please Give Your Rating & aiso your review",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Obx(
                                            () => Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children:
                                                    List.generate(5, (index) {
                                                  bool isfillstar = index <=
                                                      ratingPageController
                                                          .tabstar.value;
                                                  return IconButton(
                                                    onPressed: () {
                                                      ratingPageController
                                                          .fillstar(index);
                                                    },
                                                    icon: Icon(Icons.star,
                                                        size: 30,
                                                        color: isfillstar
                                                            ? Colors.orange
                                                            : Colors.grey),
                                                  );
                                                })),
                                          ),
                                          Containertwo(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 10),
                                            height: 90,
                                            width: double.infinity,
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: "Write review",
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CancleButton(
                                                child: Text(
                                                  "Cancel",
                                                  style: CommonTextStyle
                                                      .coloredBold(Colors.red),
                                                ),
                                              ),
                                              ClickButton(
                                                child: Text(
                                                  "Submit",
                                                  style: CommonTextStyle
                                                      .coloredBold(
                                                          Colors.white),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ));
                                },
                                height: Get.height * 0.040,
                                width: Get.width * 0.3,
                                child: Text(
                                  "Give Review",
                                  style: CommonTextStyle.coloredBold(
                                    Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
