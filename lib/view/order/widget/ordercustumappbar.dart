import 'package:flutter/material.dart';

class OrderappBar extends StatelessWidget {
  const OrderappBar({super.key});

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
        const Spacer(),
        Text("My Orders",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 26,
            ))
      ],
    );
  }
}
