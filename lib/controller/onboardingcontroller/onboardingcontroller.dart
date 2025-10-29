import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../view/authscreen/loginscreen/login_screen.dart';

class OnboardingController extends GetxController {
  var pageIndex = 0.obs;
  var pageController = PageController();
  var selectedButton = "".obs;
  void nextpage() {
    if (pageIndex.value < 2) {
      pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    } else {
      Get.off(() => LoginScreen());
    }
  }

  void skip() {
    Get.off(() => LoginScreen());
  }

  void selectbutton(String Button) {
    selectedButton.value = Button;
  }

  final List<String> images = [
    "assets/onboarding/onboardingfirstimage.png",
    "assets/onboarding/onsecondimage.png",
    "assets/onboarding/onthirdscreen.png"
  ];
  final List<String> textfirst = [
    "One best app for all \n        your needs",
    "Let's fulfill your daily\n need with clickcart",
    "Follow and get update from favorite store",
  ];
  final List<String> textsecond = [
    "Easy shopping for all your needs just in\nhand.clickcart is trustes by millions of \n          people in the world",
    "Easy shopping for all your needs just in\nhand.clickcart is trustes by millions of \n          people in the world",
    "Easy shopping for all your needs just in\nhand.clickcart is trustes by millions of \n          people in the world",
  ];
}
