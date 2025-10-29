import 'package:clickcart/comman/widget/clickbutton.dart';
import 'package:clickcart/view/order/widget/trackorderpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../comman/widget/containerTwo.dart';
import '../../../utilitis/textstyel.dart';

class Ongoingscreen extends StatelessWidget {
  const Ongoingscreen({super.key});

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
                      const SizedBox(width: 10),
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
                              SizedBox(width: 5),
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
                                  Get.to(TrackOrderPage());
                                },
                                height: Get.height * 0.040,
                                width: Get.width * 0.3,
                                child: Text(
                                  "Track Order",
                                  style: CommonTextStyle.coloredBold(
                                    Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
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
