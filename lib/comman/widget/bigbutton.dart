import 'package:flutter/material.dart';

import '../../utilitis/color.dart';

class CommonButton extends StatelessWidget {
  final Color? color;
  final VoidCallback? onTap;
  final Widget? child;
  const CommonButton({super.key, this.color, this.onTap, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 55,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColor.buttonOrange,
            borderRadius: BorderRadius.circular(50),
          ),
          child: child),
    );
  }
}
