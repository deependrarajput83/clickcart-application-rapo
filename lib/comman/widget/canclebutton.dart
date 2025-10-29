import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CancleButton extends StatelessWidget {
  final Color? color;
  final VoidCallback? onTap;
  final Widget? child;
  const CancleButton({
    super.key,
    this.color,
    this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 45,
          width: Get.width * 0.38,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffFFD8C7),
            borderRadius: BorderRadius.circular(50),
          ),
          child: child),
    );
  }
}
