import 'package:clickcart/comman/widget/canclebutton.dart';
import 'package:clickcart/comman/widget/clickbutton.dart';
import 'package:clickcart/utilitis/textstyel.dart';
import 'package:clickcart/view/cart/widget/chekoutpage/shippingtype.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/app_bar.dart';
import '../../../../comman/widget/containerTwo.dart';
import '../../../../controller/homepagecontroller/homepagecontroller.dart';
import '../../../../utilitis/color.dart';

class Addresspage extends StatelessWidget {
  Addresspage({super.key});
  CheckBox checkBox = Get.put(CheckBox());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(
        title: "Shipping Address",
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
                                  Icons.location_on_rounded,
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
                                    Text(
                                      "Home",
                                      style: CommonTextStyle.bold,
                                    ),
                                    Flexible(
                                      child: Text(
                                        "jaipur mansarower rajasthan",
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
                                  value: checkBox.isClick == index,
                                  onChanged: (tap) {
                                    checkBox.tap(index);
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
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CancleButton(
                    onTap: () {},
                    color: Color(0xffFFD8C7),
                    child: Text(
                      "Add New Address",
                      style: CommonTextStyle.coloredBold(Colors.red),
                    ),
                  ),
                  ClickButton(
                    onTap: () {
                      Get.to(Shippingtype());
                    },
                    child: Text(
                      "Apply",
                      style: CommonTextStyle.coloredBold(Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
