import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utilitis/color.dart';
import '../../utilitis/textstyel.dart';
import 'onboardingscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Onboardingscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.buttonOrange,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Get.height * 0.06,
                width: Get.width * 0.14,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.card_travel,
                  color: AppColor.buttonOrange,
                  size: 35,
                ),
              ),
              SizedBox(
                width: Get.width * 0.028,
              ),
              const Text(
                "ClickCart",
                style: SplashScreen.splashtext,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: const CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
