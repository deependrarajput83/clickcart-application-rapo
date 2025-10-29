import 'package:flutter/material.dart';

import '../../../utilitis/textstyel.dart';

class Profileimage extends StatelessWidget {
  const Profileimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage("assets/logo/profile.png"),
        ),
        SizedBox(height: 10),
        Text("Deependra Singh Rathore",
            style: CommonTextStyle.bold.copyWith(fontSize: 18)),
        Text("deependrasingh@gmail.com",
            style: CommonTextStyle.small.copyWith(color: Colors.grey)),
      ],
    );
  }
}
