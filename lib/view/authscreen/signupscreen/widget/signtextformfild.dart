import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/textformfield.dart';
import '../../../../utilitis/textstyel.dart';

class SignupTextformfild extends StatelessWidget {
  SignupTextformfild({super.key});
  TextEditingController namecontroller = TextEditingController();
  TextEditingController retypepasscontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: Get.height * 0.009),
        Text(
          "Full Name",
          style: AuthText.subHeading,
        ),
        SizedBox(height: Get.height * 0.009),
        CommonTextfield(
          controller: namecontroller,
          hintText: "Type your full name",
          prefixIcon: Icons.person,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return "Name is requried";
            }
            if (value.length < 3) {
              return "Enter a vaild user name";
            }
            return null;
          },
        ),
        SizedBox(height: Get.height * 0.01),
        Text(
          "Email",
          style: AuthText.subHeading,
        ),
        SizedBox(height: Get.height * 0.009),
        CommonTextfield(
          controller: emailcontroller,
          hintText: "Type your email",
          prefixIcon: Icons.email,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return "Email required";
            }
            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
              return "Enter a vaild email";
            }
            return null;
          },
        ),
        SizedBox(height: Get.height * 0.01),
        Text(
          "Password",
          style: AuthText.subHeading,
        ),
        SizedBox(height: Get.height * 0.009),
        CommonTextfield(
            controller: passwordcontroller,
            hintText: "Type your password",
            prefixIcon: Icons.lock,
            suffixIcon: Icons.remove_red_eye,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Password is required";
              }
              if (value.length < 6) {
                return "Password must be at least 6 characters";
              }
              return null;
            }),
        SizedBox(height: Get.height * 0.01),
        Text(
          "Confirm Password",
          style: AuthText.subHeading,
        ),
        SizedBox(height: Get.height * 0.009),
        CommonTextfield(
            controller: retypepasscontroller,
            hintText: "Re-Type your password",
            prefixIcon: Icons.lock,
            suffixIcon: Icons.remove_red_eye,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Password is required";
              }
              if (value != passwordcontroller.text) {
                return "Passwords do not match";
              }
              return null;
            }),
      ],
    );
  }
}
