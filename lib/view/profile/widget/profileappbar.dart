import 'package:flutter/material.dart';

class Profileappbar extends StatelessWidget {
  const Profileappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.card_travel,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
        const Text(
          "Profile",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
