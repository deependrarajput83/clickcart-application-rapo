import 'package:clickcart/utilitis/color.dart';
import 'package:clickcart/view/onboardingscreen/widget/bottomcotainer.dart';
import 'package:clickcart/view/onboardingscreen/widget/pageviewcode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboardingcontroller/onboardingcontroller.dart';

class Onboardingscreen extends StatelessWidget {
  Onboardingscreen({super.key});
  OnboardingController onboardingController = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.background,
        body: Column(
          children: [Expanded(child: Pageviewcode()), Bottomcotainer()],
        ));
  }
}
