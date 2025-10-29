import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wishappbar extends StatelessWidget {
  const Wishappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
        Spacer(),
        const Text("My Wishlist",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        const Spacer(),
        IconButton(
            onPressed: () {
              Get.bottomSheet(Container(
                height: Get.height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ));
            },
            icon: Icon(
              Icons.filter_list_alt,
              size: 26,
            ))
      ],
    );
  }
}
