import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/textformfield.dart';
import '../../../../utilitis/textstyel.dart';

class Textformfild extends StatelessWidget {
  Textformfild({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: AuthText.subHeading,
        ),
        SizedBox(height: Get.height * 0.009),
        CommonTextfield(
          controller: emailcontroller,
          hintText: "Email",
          prefixIcon: Icons.email,
        ),
        SizedBox(height: Get.height * 0.02),
        Text(
          "Password",
          style: AuthText.subHeading,
        ),
        SizedBox(height: Get.height * 0.009),
        CommonTextfield(
          controller: passwordcontroller,
          hintText: "Password",
          prefixIcon: Icons.lock,
          suffixIcon: Icons.remove_red_eye,
        ),
      ],
    );
  }
}
