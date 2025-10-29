import 'package:clickcart/utilitis/color.dart';
import 'package:clickcart/view/authscreen/loginscreen/widget/loginoptionpage.dart';
import 'package:clickcart/view/authscreen/loginscreen/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../bottom_nav_bar.dart';
import '../../../comman/widget/bigbutton.dart';
import '../../../controller/authcontroller/logincontroller.dart';
import '../../../utilitis/textstyel.dart';
import '../signupscreen/signuppage.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
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
              SizedBox(height: Get.height * 0.05),
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
              SizedBox(height: Get.height * 0.025),
              Text(
                "Give Creadential to sign in your account",
                style: AuthText.small,
              ),
              SizedBox(height: Get.height * 0.025),
              Textformfild(),
              SizedBox(height: Get.height * 0.012),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: Obx(() => Checkbox(
                          shape: CircleBorder(),
                          checkColor: Colors.white,
                          activeColor: AppColor.buttonOrange,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: loginController.ischecked.value,
                          onChanged: (tap) {
                            loginController.check(tap!);
                          },
                        )),
                  ),
                  Text("Remember Me", style: AuthText.small),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password",
                        style: AuthText.Smallsecond,
                      ))
                ],
              ),
              SizedBox(height: Get.height * 0.045),
              CommonButton(
                  color: AppColor.buttonOrange,
                  onTap: () {
                    Get.to(BottomNavBar());
                  },
                  child: Text("Sign in")),
              SizedBox(height: Get.height * 0.045),
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
              SizedBox(height: Get.height * 0.045),
              Loginoptionpage(),
              SizedBox(height: Get.height * 0.045),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ", style: AuthText.small),
                  TextButton(
                    onPressed: () {
                      Get.to(Signuppage());
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(0, 0),
                    ),
                    child: Text(
                      "Sign Up",
                      style: AuthText.Smallsecond,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
