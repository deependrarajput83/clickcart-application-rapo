import 'package:clickcart/utilitis/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClickButton extends StatelessWidget {
  final Color? color;
  final VoidCallback? onTap;
  final Widget? child;
  final double? height;
  final double? width;
  const ClickButton(
      {super.key, this.color, this.onTap, this.child, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height ?? 45,
          width: width ?? Get.width * 0.38,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColor.buttonOrange,
            borderRadius: BorderRadius.circular(50),
          ),
          child: child),
    );
  }
}
