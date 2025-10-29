import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Containertwo extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final Border? border;
  final EdgeInsetsGeometry? padding;
  final List<BoxShadow>? boxShadow;
  const Containertwo(
      {super.key,
      this.color,
      this.child,
      this.borderRadius,
      this.height,
      this.width,
      this.border,
      this.padding,
      this.boxShadow});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height ?? Get.height * 0.05,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: color,
        border: border,
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
