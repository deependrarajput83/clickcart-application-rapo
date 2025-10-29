import 'package:flutter/material.dart';

import '../../../comman/widget/app_bar.dart';
import '../../../utilitis/textstyel.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> notifications = [
      {
        "icon": Icons.local_offer_rounded,
        "title": "Big Diwali Sale!",
        "subtitle": "Grab 50% OFF on all electronics. Limited time offer!",
        "time": "2h ago",
        "color": Colors.orangeAccent,
      },
      {
        "icon": Icons.local_shipping_rounded,
        "title": "Order Shipped",
        "subtitle": "Your order #CC12345 has been shipped. Track it now.",
        "time": "5h ago",
        "color": Colors.green,
      },
      {
        "icon": Icons.payment_rounded,
        "title": "Payment Successful",
        "subtitle": "Your payment of ₹2,499 was successful. Thank you!",
        "time": "Yesterday",
        "color": Colors.blue,
      },
      {
        "icon": Icons.support_agent_rounded,
        "title": "Customer Support",
        "subtitle":
            "Your query has been received. Our team will reach out shortly.",
        "time": "2 days ago",
        "color": Colors.purple,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(
        title: "Notifications",
        showBack: true,
      ),
      body: notifications.isEmpty
          ? const Center(
              child: Text(
                "No new notifications ",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final item = notifications[index];
                return NotificationCard(
                  icon: item["icon"],
                  title: item["title"],
                  subtitle: item["subtitle"],
                  time: item["time"],
                  color: item["color"],
                );
              },
            ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String time;
  final Color color;

  const NotificationCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.color,
  });

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
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: CommonTextStyle.medium.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black87)),
                const SizedBox(height: 4),
                Text(subtitle,
                    style: CommonTextStyle.small
                        .copyWith(color: Colors.black54, height: 1.4)),
                const SizedBox(height: 6),
                Text(time,
                    style: CommonTextStyle.small
                        .copyWith(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
