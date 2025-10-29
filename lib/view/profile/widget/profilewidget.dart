import 'package:clickcart/comman/widget/clickbutton.dart';
import 'package:clickcart/view/profile/widget/paymentpage.dart';
import 'package:clickcart/view/profile/widget/privacypage.dart';
import 'package:clickcart/view/profile/widget/rateus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../comman/widget/canclebutton.dart';
import '../../../utilitis/textstyel.dart';
import '../../authscreen/loginscreen/login_screen.dart';
import 'accountpage.dart';
import 'helppage.dart';
import 'notificationpage.dart';

class Profilewidget extends StatelessWidget {
  const Profilewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Helperclass(
            icon: Icons.person_outline,
            title: "Account",
            onTap: () {
              Get.to(Accountpage());
            }),
        Helperclass(
            icon: Icons.notifications_none,
            title: "Notification",
            onTap: () {
              Get.to(NotificationSettingScreen());
            }),
        Helperclass(
            icon: Icons.help_outline,
            title: "Help",
            onTap: () {
              Get.to(HelpScreen());
            }),
        Helperclass(
            icon: Icons.credit_card_outlined,
            title: "Payment",
            onTap: () {
              Get.to(PaymentScreen());
            }),
        Helperclass(
            icon: Icons.privacy_tip_outlined,
            title: "Privacy & Policy",
            onTap: () {
              Get.to(PrivacyPolicyScreen());
            }),
        Helperclass(
            icon: Icons.star_border,
            title: "Rate Us",
            onTap: () {
              Get.to(RateUsScreen());
            }),
        Helperclass(
            icon: Icons.logout,
            title: "Logout",
            onTap: () {
              Get.bottomSheet(Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Are you sure you want to logout?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        CancleButton(
                          onTap: () {
                            Get.back();
                          },
                          child: Text(
                            "Cancle",
                            style: CommonTextStyle.coloredBold(Colors.red),
                          ),
                        ),
                        const SizedBox(width: 25),
                        ClickButton(
                          onTap: () {
                            Get.to(LoginScreen());
                            Get.snackbar("Logged Out",
                                "You have successfully logged out!",
                                backgroundColor: Colors.black,
                                colorText: Colors.white);
                          },
                          child: Text(
                            "Logout",
                            style: CommonTextStyle.coloredBold(Colors.white),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ));
            }),
      ],
    );
  }
}

class Helperclass extends StatelessWidget {
  IconData icon;
  String title;
  VoidCallback onTap;
  Helperclass({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 3),
      leading: Icon(icon, color: Colors.black54),
      title: Text(title, style: CommonTextStyle.medium),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
      onTap: onTap,
    );
  }
}
