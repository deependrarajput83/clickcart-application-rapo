import 'package:clickcart/view/cart/widget/chekoutpage/paymentmethod.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/app_bar.dart';
import '../../../../comman/widget/bigbutton.dart';
import '../../../../comman/widget/containerTwo.dart';
import '../../../../controller/homepagecontroller/homepagecontroller.dart';
import '../../../../utilitis/color.dart';
import '../../../../utilitis/textstyel.dart';

class Shippingtype extends StatelessWidget {
  Shippingtype({super.key});
  List<String> Title = [
    "Free Delivery",
    "Standard Delivery",
    "Express Delivery",
  ];
  List<String> Rate = [
    "Rs 0",
    "Rs 50",
    "Rs 100",
  ];
  List<String> subtitle = [
    "Arrives in 2-7 business day",
    "Arrives in 2-4 business day",
    "Arrives in 1-2 business day"
  ];
  ShippingController shippingController = Get.put(ShippingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(
        title: "Choose Shipping",
        showBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Containertwo(
                        height: Get.height * 0.13,
                        width: double.infinity,
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 24,
                                child: Icon(
                                  Icons.electric_bike_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          Title[index],
                                          style: CommonTextStyle.bold,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          Rate[index],
                                          style: CommonTextStyle.bold,
                                        )
                                      ],
                                    ),
                                    Flexible(
                                      child: Text(
                                        subtitle[index],
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Obx(
                                () => Checkbox(
                                  shape: CircleBorder(),
                                  checkColor: Colors.white,
                                  activeColor: AppColor.buttonOrange,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  value: shippingController.ischoose == index,
                                  onChanged: (tap) {
                                    shippingController.tuch(index);
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Containertwo(
              height: Get.height * 0.18,
              width: double.infinity,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Amount", style: CommonTextStyle.small),
                            Spacer(),
                            Text("₹1000",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text("Shipping", style: CommonTextStyle.small),
                            Spacer(),
                            Text("₹50",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: Row(
                      children: [
                        Text("Total Amount", style: CommonTextStyle.small),
                        Spacer(),
                        Text("₹1050",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: CommonButton(
                onTap: () {
                  Get.to(Paymentmethod());
                },
                color: AppColor.buttonOrange,
                child: Text(
                  "Continue Payment",
                  style: CommonTextStyle.coloredBold(Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
