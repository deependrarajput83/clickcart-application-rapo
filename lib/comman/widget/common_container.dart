import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonContainer extends StatelessWidget {
  final String? text;
  final Widget? image;
  final IconData? icons;
  final Color? iconColor;
  final VoidCallback? onPressed;
  final Color? color;
  const CommonContainer({
    super.key,
    this.text,
    this.image,
    this.icons,
    this.iconColor,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.20,
          width: Get.width * 0.45,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade300, width: 1),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: image ?? const SizedBox(),
          ),
        ),
        if (text != null)
          Positioned(
              top: 8,
              left: 8,
              child: Container(
                height: 28,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    text!,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
        Positioned(
          top: 8,
          right: 8,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: iconColor ?? Colors.red,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: onPressed,
              icon: Icon(
                icons,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
