import 'package:clickcart/comman/widget/app_bar.dart';
import 'package:clickcart/comman/widget/bigbutton.dart';
import 'package:clickcart/comman/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utilitis/textstyel.dart';

class Accountpage extends StatelessWidget {
  Accountpage({super.key});
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController mobilenumbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: "Account",
        showBack: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/logo/profile.png"),
                  ),
                  Positioned(
                      bottom: 9,
                      left: 65,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 14,
                        child: Icon(
                          Icons.edit_outlined,
                          size: 18,
                          weight: 3,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.04),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name",
                    style: CommonTextStyle.Details.copyWith(fontSize: 15),
                  ),
                  Icon(
                    Icons.edit_outlined,
                    size: 20,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            SizedBox(height: 7),
            CommonTextfield(
              controller: namecontroller,
              hintText: "Deependra singh",
              prefixIcon: Icons.person,
            ),
            SizedBox(height: Get.height * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Email",
                    style: CommonTextStyle.Details.copyWith(fontSize: 15),
                  ),
                  Icon(
                    Icons.edit_outlined,
                    size: 20,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 7),
            CommonTextfield(
              controller: emailcontroller,
              hintText: "Deependrasingh830@gmail.com",
              prefixIcon: Icons.email,
            ),
            SizedBox(height: Get.height * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Phone Number",
                    style: CommonTextStyle.Details.copyWith(fontSize: 15),
                  ),
                  Icon(
                    Icons.edit_outlined,
                    size: 20,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 7),
            CommonTextfield(
              controller: mobilenumbercontroller,
              hintText: "9095830278",
              prefixIcon: Icons.call,
            ),
            SizedBox(height: Get.height * 0.04),
            CommonButton(
              child: Text(
                "Update",
                style: CommonTextStyle.coloredBold(Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
