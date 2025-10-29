import 'package:clickcart/utilitis/textstyel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loginoptionpage extends StatelessWidget {
  const Loginoptionpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            height: Get.height * 0.06,
            width: Get.width * 0.4,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo/googlelogo.png',
                    fit: BoxFit.fill,
                    height: Get.height * 0.040,
                  ),
                  SizedBox(width: Get.width * 0.01),
                  Text(
                    "Google",
                    style: AuthText.label,
                  )
                ],
              ),
            )),
        Container(
          height: Get.height * 0.06,
          width: Get.width * 0.4,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.apple,
                  size: Get.height * 0.040,
                ),
                SizedBox(width: Get.width * 0.01),
                Text(
                  "Apple",
                  style: AuthText.label,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
