import 'package:clickcart/view/profile/widget/membership.dart';
import 'package:clickcart/view/profile/widget/profileappbar.dart';
import 'package:clickcart/view/profile/widget/profileimage.dart';
import 'package:clickcart/view/profile/widget/profilewidget.dart';
import 'package:flutter/material.dart';

import '../../../utilitis/textstyel.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            const SizedBox(height: 35),
            const Profileappbar(),
            const SizedBox(height: 15),
            Profileimage(),
            const SizedBox(height: 15),
            Membership(),
            const SizedBox(height: 20),
            Row(
              children: [
                Text("Account Settings", style: CommonTextStyle.bold),
              ],
            ),
            const SizedBox(height: 10),
            Profilewidget(),
          ],
        ),
      ),
    );
  }
}
