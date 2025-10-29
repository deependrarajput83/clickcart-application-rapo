import 'package:clickcart/comman/widget/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../comman/widget/containerTwo.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CommonAppBar(
          title: "Track Orders",
          showBack: true,
          actionIcon: Icons.search_rounded,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Containertwo(
                    padding: EdgeInsets.all(8),
                    height: Get.height * 0.16,
                    width: double.infinity,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 0.2),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 0.1,
                          color: Colors.white,
                          blurRadius: 0.2)
                    ],
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          "assets/fashion/img_1.png",
                          height: Get.height * 0.14,
                          width: Get.width * 0.3,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Men outfitter T-shirt",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Text("Color:-Red"),
                                SizedBox(width: 5),
                                Text(
                                  "|",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 5),
                                Text("Size:-M"),
                                const SizedBox(width: 5),
                                Text(
                                  "|",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 5),
                                Text("Qty:-1"),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  "₹400",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )
                          ])
                    ])),
                const SizedBox(height: 25),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Custumicon(
                        icons: Icons.inventory_2,
                        isdone: true,
                      ),
                      Custumicon(
                        icons: Icons.local_shipping,
                        isdone: true,
                      ),
                      Custumicon(
                        icons: Icons.cached,
                        isdone: false,
                      ),
                      Custumicon(
                        icons: Icons.home_filled,
                        isdone: false,
                      )
                    ]),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    "Packet In Delivery",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 14),
                Divider(),
                const SizedBox(height: 8),
                const Text(
                  "Order Status Details",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
                const SizedBox(height: 10),
                Expanded(
                    child: ListView(
                  children: [
                    OrderStatus(
                      title: "Order In Transit - Dec 12",
                      address: "2715 Dr. San Jose, Dakota 83475",
                      time: "06:30 PM",
                      isActive: false,
                    ),
                    OrderStatus(
                      title: "Order In Custom Port - Dec 11",
                      address: "2972 Westheimer Rd, Illinois 85486",
                      time: "05:00 PM",
                      isActive: false,
                    ),
                    OrderStatus(
                      title: "Orders are Shipped - Dec 10",
                      address: "6391 Elgin St. Celina, Delaware 102",
                      time: "08:19 PM",
                      isActive: true,
                    ),
                    OrderStatus(
                      title: "Order is in Packing - Dec 10",
                      address: "8502 Preston Rd. Ingle, Main 9843",
                      time: "10:15 AM",
                      isActive: true,
                    ),
                    OrderStatus(
                      title: "Verified Payments - Dec 10",
                      address: "2464 Royal Ln, New Jersey 45463",
                      time: "10:03 AM",
                      isActive: true,
                    )
                  ],
                ))
              ]),
        ));
  }
}

class Custumicon extends StatelessWidget {
  final IconData? icons;
  final bool isdone;
  const Custumicon({super.key, this.icons, this.isdone = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: isdone ? Colors.green : Colors.grey.shade300,
          child:
              Icon(icons, color: isdone ? Colors.white : Colors.grey, size: 22),
        ),
        const SizedBox(height: 4),
        Icon(Icons.more_horiz,
            size: 20, color: isdone ? Colors.green : Colors.grey.shade300),
      ],
    );
  }
}

class OrderStatus extends StatelessWidget {
  final String? title;
  final String? address;
  final String? time;
  final bool isActive;
  const OrderStatus(
      {super.key, this.title, this.address, this.time, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Icon(
                Icons.circle,
                color: isActive ? Colors.orange : Colors.grey.shade400,
                size: 15,
              ),
              Container(
                height: 35,
                width: 2,
                color: Colors.grey.shade300,
              ),
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15)),
                const SizedBox(height: 3),
                Text(address!,
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 14)),
              ],
            ),
          ),
          Text(time!,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 14)),
        ],
      ),
    );
  }
}
