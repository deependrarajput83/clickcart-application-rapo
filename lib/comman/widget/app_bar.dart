import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final IconData? actionIcon;
  final VoidCallback? onPressed;
  final Color? iconColor;
  final Color titleColor;
  final double? iconSize;
  final Widget? customLeading;
  final PreferredSizeWidget? bottom;
  const CommonAppBar(
      {super.key,
      required this.title,
      this.showBack = false,
      this.actionIcon,
      this.onPressed,
      this.iconColor = Colors.black,
      this.titleColor = Colors.black,
      this.customLeading,
      this.iconSize,
      this.bottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: showBack
          ? IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: iconColor,
                size: iconSize,
              ),
              onPressed: () {
                Get.back();
              })
          : customLeading ?? const SizedBox(),
      title: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottom: bottom,
      actions: [
        if (actionIcon != null)
          IconButton(
            icon: Icon(
              actionIcon,
              color: iconColor,
              size: iconSize,
            ),
            onPressed: onPressed,
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
