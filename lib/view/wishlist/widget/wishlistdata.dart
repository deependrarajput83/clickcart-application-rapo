import 'package:clickcart/utilitis/color.dart';
import 'package:clickcart/utilitis/textstyel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListData extends StatelessWidget {
  const WishListData({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 9, top: 9),
            child: Container(
              height: Get.height * 0.15,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 0.2)),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      child: Image.asset(
                        "assets/fashion/cloth.png",
                        height: Get.height * 0.15,
                        width: Get.width * 0.25,
                        fit: BoxFit.fill,
                      )),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Man best t-shrits combo stylesh and best in online martket",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              const Text(
                                "Price:",
                                style: CommonTextStyle.regular,
                              ),
                              Text("400", style: CommonTextStyle.small),
                              const Spacer(),
                              const Text(
                                "off:",
                                style: CommonTextStyle.regular,
                              ),
                              const SizedBox(width: 1),
                              Text("400",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                      decoration: TextDecoration.lineThrough)),
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(children: [
                              const Text(
                                "Seller:",
                                style: CommonTextStyle.regular,
                              ),
                              Text("Xyz", style: CommonTextStyle.small)
                            ])),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  color: AppColor.buttonOrange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                  child: const Text(
                                "Remove",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  color: AppColor.buttonOrange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                  child: const Text(
                                "Add to cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
