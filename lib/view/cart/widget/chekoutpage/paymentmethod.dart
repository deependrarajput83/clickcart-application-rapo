import 'package:clickcart/view/cart/widget/chekoutpage/paymentpin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/app_bar.dart';
import '../../../../comman/widget/bigbutton.dart';
import '../../../../comman/widget/containerTwo.dart';
import '../../../../controller/homepagecontroller/homepagecontroller.dart';
import '../../../../utilitis/color.dart';
import '../../../../utilitis/textstyel.dart';

class Paymentmethod extends StatelessWidget {
  Paymentmethod({super.key});
  List<String> Title = [
    "My Wallet",
    "Paypal",
    "Phone pe",
    "Google Pay",
    "*** *** *** 6495"
  ];
  List<Icon> listicons = [
    Icon(
      Icons.wallet,
      color: Colors.green,
    ),
    Icon(
      Icons.paypal,
      color: Colors.blue,
    ),
    Icon(
      Icons.phone_android,
      color: Colors.blue,
    ),
    Icon(
      Icons.g_mobiledata,
      color: Colors.deepOrange,
    ),
    Icon(
      Icons.credit_card,
      color: Colors.red,
    )
  ];
  Paymenttabseclection paymenttabseclection = Get.put(Paymenttabseclection());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: "Payment Method",
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
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5),
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
                                backgroundColor: Colors.grey.shade300,
                                radius: 24,
                                child: listicons[index],
                              ),
                              const SizedBox(width: 16),
                              Text(
                                Title[index],
                                style: CommonTextStyle.bold,
                              ),
                              const Spacer(),
                              Obx(
                                () => Checkbox(
                                  shape: CircleBorder(),
                                  checkColor: Colors.white,
                                  activeColor: AppColor.buttonOrange,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  value: paymenttabseclection
                                          .ispaymenttabselcted ==
                                      index,
                                  onChanged: (tap) {
                                    paymenttabseclection.ptab(index);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CommonButton(
                onTap: () {
                  Get.to(Paymentpin());
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
