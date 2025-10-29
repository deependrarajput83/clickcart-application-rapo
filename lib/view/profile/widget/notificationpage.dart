import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../comman/widget/app_bar.dart';
import '../../../controller/orderpagecontroller/orderpage.dart';
import '../../../utilitis/textstyel.dart';

class NotificationSettingScreen extends StatelessWidget {
  NotificationSettingScreen({super.key});
  SwitchToggleController switchToggleController =
      Get.put(SwitchToggleController());
  final List<Map<String, dynamic>> notificationitem = [
    {
      "icon": Icons.notifications,
      "title": "Push Notifications",
      "subtitle": "Receive all important app notifications"
    },
    {
      "icon": Icons.local_offer_rounded,
      "title": "Offers & Discounts",
      "subtitle": "Get notified about new offers and sales"
    },
    {
      "icon": Icons.shopping_bag_outlined,
      "title": "Order Updates",
      "subtitle": "Get updates about your order status and delivery"
    },
    {
      "icon": Icons.system_update_rounded,
      "title": "App Updates",
      "subtitle": "Be the first to know about new app features"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(
        title: "Notification Settings",
        showBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.notifications_active_rounded,
                      size: 48, color: Colors.white),
                  SizedBox(height: 8),
                  Text(
                    "Manage Your Notifications",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Customize how you receive alerts and updates.",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
                itemCount: notificationitem.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = notificationitem[index];
                  return Obx(
                    () => NotificatonSwitch(
                        icon: item["icon"],
                        title: item["title"],
                        subtitle: item["subtitle"],
                        value: switchToggleController.isSwitch[index],
                        onChanged: (val) =>
                            switchToggleController.onSwitch(index, val)),
                  );
                }),
            const SizedBox(height: 30),
            Center(
              child: Text(
                "Your preferences are saved automatically",
                style: CommonTextStyle.small.copyWith(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificatonSwitch extends StatelessWidget {
  IconData icon;
  String title;
  String subtitle;
  bool value;
  ValueChanged<bool> onChanged;
  NotificatonSwitch(
      {super.key,
      required this.icon,
      required this.title,
      required this.value,
      required this.subtitle,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueAccent, size: 28),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: CommonTextStyle.medium
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(subtitle,
                    style: CommonTextStyle.small
                        .copyWith(color: Colors.black54, height: 1.3)),
              ],
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
