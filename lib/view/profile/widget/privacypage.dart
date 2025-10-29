import 'package:flutter/material.dart';

import '../../../comman/widget/app_bar.dart';
import '../../../utilitis/textstyel.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(
        title: "Privacy & Policy",
        showBack: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF7F00FF), Color(0xFFE100FF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.privacy_tip_rounded,
                      size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    "Your Privacy Matters",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "We value your trust and are committed to protecting your data.",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            PrivacyWidget(
              icon: Icons.lock_outline,
              title: "1. Information Collection",
              content:
                  "We collect your basic details such as name, email, and phone number to improve your shopping experience. Your data is stored securely and never shared without your consent.",
            ),
            PrivacyWidget(
              icon: Icons.security_rounded,
              title: "2. Data Protection",
              content:
                  "All your personal and payment data is encrypted using advanced security protocols to prevent unauthorized access or misuse.",
            ),
            PrivacyWidget(
              icon: Icons.share_rounded,
              title: "3. Information Sharing",
              content:
                  "We never sell or share your personal data with third-party companies for marketing. Information may be shared only with trusted partners for order delivery or payment verification.",
            ),
            PrivacyWidget(
              icon: Icons.rule_folder_rounded,
              title: "4. Policy Updates",
              content:
                  "Our privacy policy may change occasionally. Any updates will be reflected on this page with the revised date at the top.",
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 10),
            Center(
              child: Text(
                "© 2025 ClickCart. All rights reserved.",
                style: CommonTextStyle.small.copyWith(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrivacyWidget extends StatelessWidget {
  IconData icon;
  String title;
  String content;
  PrivacyWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 5),
            )
          ],
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.blueAccent, size: 26),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: CommonTextStyle.medium
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text(
                    content,
                    style: CommonTextStyle.small
                        .copyWith(color: Colors.black54, height: 1.4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
