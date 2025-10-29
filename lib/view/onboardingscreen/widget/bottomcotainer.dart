import 'package:clickcart/utilitis/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboardingcontroller/onboardingcontroller.dart';
import '../../../utilitis/textstyel.dart';

class Bottomcotainer extends StatelessWidget {
  Bottomcotainer({super.key});
  OnboardingController onboardingController = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(20),
        height: Get.height * 0.4,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.oncontainer,
          borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
        ),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.02),
            Obx(() => Text(
                  onboardingController
                      .textfirst[onboardingController.pageIndex.value],
                  style: OnboardingText.heading,
                )),
            SizedBox(height: Get.height * 0.03),
            Obx(() => Text(
                  onboardingController
                      .textsecond[onboardingController.pageIndex.value],
                  style: OnboardingText.body,
                )),
            SizedBox(height: Get.height * 0.03),
            Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    onboardingController.images.length,
                    (index) => AnimatedContainer(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        height: 10,
                        width: onboardingController.pageIndex.value == index
                            ? 30
                            : 20,
                        decoration: BoxDecoration(
                            color: onboardingController.pageIndex.value == index
                                ? Colors.white
                                : Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        duration: Duration(milliseconds: 300))))),
            SizedBox(height: Get.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => ElevatedButton(
                    onPressed: () {
                      onboardingController.selectbutton("skip");
                      onboardingController.skip();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          onboardingController.selectedButton.value == "skip"
                              ? Colors.white
                              : Colors.orange.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: Get.height * 0.070,
                          vertical: Get.height * 0.020),
                      elevation: 1,
                    ),
                    child: Obx(
                      () => Text(
                        "skip",
                        style: TextStyle(
                            color: onboardingController.selectedButton.value ==
                                    "skip"
                                ? Colors.orange
                                : Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: Get.height * 0.018),
                      ),
                    ))),
                Obx(
                  () => ElevatedButton(
                      onPressed: () {
                        onboardingController.selectbutton("Next");
                        onboardingController.nextpage();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            onboardingController.selectedButton.value == "Next"
                                ? Colors.white
                                : Colors.orange.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.height * 0.070,
                            vertical: Get.height * 0.020),
                        elevation: 1,
                      ),
                      child: Obx(
                        () => Text(
                          "Next",
                          style: TextStyle(
                              color:
                                  onboardingController.selectedButton.value ==
                                          "Next"
                                      ? Colors.orange
                                      : Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: Get.height * 0.018),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
