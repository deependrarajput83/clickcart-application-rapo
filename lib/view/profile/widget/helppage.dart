import 'package:flutter/material.dart';

import '../../../comman/widget/app_bar.dart';
import '../../../utilitis/textstyel.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(
        title: "Help & Support",
        showBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [Color(0xFFFF9800), Color(0xFFFFC107)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.support_agent_rounded,
                      size: 50, color: Colors.white),
                  const SizedBox(height: 10),
                  Text(
                    "Need Assistance?",
                    style: CommonTextStyle.Details.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "We’re here to help you anytime!",
                    style: CommonTextStyle.small
                        .copyWith(color: Colors.white70, fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Text("Contact Us",
                style: CommonTextStyle.Details.copyWith(fontSize: 18)),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.green.withOpacity(0.3)),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: const Icon(Icons.call, color: Colors.white),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Call Us",
                            style: CommonTextStyle.medium
                                .copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(height: 2),
                        const Text("+91 98765 43210",
                            style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.redAccent.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.redAccent.withOpacity(0.3)),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent,
                      ),
                      child:
                          const Icon(Icons.email_outlined, color: Colors.white),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email Us",
                            style: CommonTextStyle.medium
                                .copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 2),
                        const Text("support@clickcart.com",
                            style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
