import 'package:clickcart/comman/widget/app_bar.dart';
import 'package:clickcart/comman/widget/bigbutton.dart';
import 'package:clickcart/comman/widget/containerTwo.dart';
import 'package:clickcart/utilitis/textstyel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'addresspage.dart';
import 'caekoutdata.dart';

class Chekoutpage extends StatelessWidget {
  const Chekoutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(
        title: "Checkout",
        showBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Order List",
              style: CommonTextStyle.bold,
            ),
            Expanded(
                child:
                    SizedBox(height: Get.height * 0.9, child: Checkoutdata())),
          ],
        ),
      ),
      bottomNavigationBar: Containertwo(
        height: Get.height * 0.25,
        width: Get.width * 0.15,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: CommonTextStyle.small,
                  ),
                  Text(
                    "₹4533",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Shipping Charge", style: CommonTextStyle.small),
                  Text(
                    "₹-",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              CommonButton(
                  child: Text(
                    "Continue",
                    style: CommonTextStyle.coloredBold(Colors.white)
                        .copyWith(fontSize: 18),
                  ),
                  onTap: () {
                    Get.to(Addresspage());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
