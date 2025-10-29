import 'package:clickcart/comman/widget/canclebutton.dart';
import 'package:clickcart/comman/widget/clickbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../comman/widget/containerTwo.dart';
import '../../../utilitis/textstyel.dart';
import 'chekoutpage/chekoutpage.dart';

class Cartdata extends StatelessWidget {
  const Cartdata({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: GestureDetector(
              onTap: () {
                Get.to(Chekoutpage());
              },
              child: Container(
                padding: EdgeInsets.all(8),
                height: Get.height * 0.16,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 0.2)),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          "assets/fashion/cloth.png",
                          height: Get.height * 0.12,
                          width: Get.width * 0.3,
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Men outwaer cloth",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    Get.bottomSheet(Containertwo(
                                      height: Get.height * 0.4,
                                      width: double.infinity,
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .arrow_drop_down_circle)),
                                                const Text("Remove From cart")
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Containertwo(
                                              padding: EdgeInsets.all(10),
                                              height: Get.height * 0.15,
                                              width: double.infinity,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  width: 0.1),
                                              child: Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    child: Image.asset(
                                                      "assets/fashion/cloth.png",
                                                      fit: BoxFit.fill,
                                                      height: Get.height * 0.13,
                                                      width: Get.width * 0.2,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Man T-shirt"),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "Size:",
                                                              style:
                                                                  CommonTextStyle
                                                                      .regular,
                                                            ),
                                                            Text("M",
                                                                style:
                                                                    CommonTextStyle
                                                                        .small),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "Color:",
                                                              style:
                                                                  CommonTextStyle
                                                                      .regular,
                                                            ),
                                                            Text("Pink",
                                                                style:
                                                                    CommonTextStyle
                                                                        .small),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "Price:",
                                                              style:
                                                                  CommonTextStyle
                                                                      .regular,
                                                            ),
                                                            Text("₹400",
                                                                style:
                                                                    CommonTextStyle
                                                                        .small),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 15),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CancleButton(
                                                    child: Text(
                                                      "Cancle",
                                                      style: CommonTextStyle
                                                          .coloredBold(
                                                              Colors.red),
                                                    ),
                                                    onTap: () {}),
                                                ClickButton(
                                                    child: Text(
                                                      "Yes Remove",
                                                      style: CommonTextStyle
                                                          .coloredBold(
                                                              Colors.white),
                                                    ),
                                                    onTap: () {})
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ));
                                  },
                                  icon: Icon(
                                    Icons.delete_outline,
                                    size: 20,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Size:",
                                style: CommonTextStyle.regular,
                              ),
                              Text("M", style: CommonTextStyle.small),
                              const Spacer(),
                              const Text(
                                "Color:",
                                style: CommonTextStyle.regular,
                              ),
                              Text("Pink", style: CommonTextStyle.small),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "Price:",
                                style: CommonTextStyle.regular,
                              ),
                              Text("₹400", style: CommonTextStyle.small),
                              const SizedBox(width: 45),
                              Container(
                                height: 28,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey)),
                                child: Icon(Icons.add),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                height: 28,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey)),
                                child: Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
