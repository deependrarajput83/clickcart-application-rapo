import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboardingcontroller/onboardingcontroller.dart';

class Pageviewcode extends StatelessWidget {
  Pageviewcode({super.key});
  OnboardingController onboardingController = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: onboardingController.pageController,
        onPageChanged: (index) => onboardingController.pageIndex.value = index,
        itemCount: onboardingController.images.length,
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Image.asset(
                  onboardingController.images[index],
                  height: 450,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        });
  }
}
