import 'package:clickcart/view/authscreen/signupscreen/widget/signtextformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../comman/widget/bigbutton.dart';
import '../../../utilitis/color.dart';
import '../../../utilitis/textstyel.dart';
import '../../home/homepage.dart';
import '../loginscreen/widget/loginoptionpage.dart';

class Signuppage extends StatelessWidget {
  Signuppage({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height * 0.02),
                Center(
                  child: Text(
                    "Sign In",
                    style: AuthText.heading,
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * 0.05,
                      width: Get.width * 0.12,
                      decoration: BoxDecoration(
                        color: AppColor.buttonOrange,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.card_travel,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: Get.width * 0.02),
                    Text(
                      "ClickCart",
                      style: AppTextStyle.logintext,
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.020),
                Text(
                  "Give Creadential to sign in your account",
                  style: AuthText.small,
                ),
                SignupTextformfild(),
                SizedBox(height: Get.height * 0.040),
                CommonButton(
                    color: AppColor.buttonOrange,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Get.to(Homepage());
                      }
                    },
                    child: Text("Sign up")),
                SizedBox(height: Get.height * 0.020),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "OR Continue with",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.040),
                Loginoptionpage(),
                SizedBox(height: Get.height * 0.018),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account? ", style: AuthText.small),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                        Get.to(Signuppage());
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 0),
                      ),
                      child: Text(
                        "Log in",
                        style: AuthText.Smallsecond,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
