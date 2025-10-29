import 'package:flutter/material.dart';

import '../../../utilitis/color.dart';
import '../../../utilitis/textstyel.dart';

class Membership extends StatelessWidget {
  const Membership({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColor.buttonOrange,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(Icons.workspace_premium_rounded, color: Colors.white, size: 30),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Gold Member", style: AuthText.button),
              SizedBox(height: 2),
              Text("You've earned Gold Membership",
                  style: TextStyle(color: Colors.white, fontSize: 13)),
            ],
          ),
        ],
      ),
    );
  }
}
