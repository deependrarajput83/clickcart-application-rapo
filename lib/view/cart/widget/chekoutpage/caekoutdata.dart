import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/containerTwo.dart';
import '../../../../utilitis/textstyel.dart';

class Checkoutdata extends StatelessWidget {
  const Checkoutdata({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: Containertwo(
            padding: const EdgeInsets.all(10),
            height: Get.height * 0.14,
            width: double.infinity,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: Colors.grey.shade300, width: 0.3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/fashion/cloth.png",
                    fit: BoxFit.fill,
                    height: Get.height * 0.09,
                    width: Get.width * 0.22,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Man T-shirt",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          )),
                      //const SizedBox(height: 2),
                      Row(
                        children: [
                          Text("Size: ",
                              style: CommonTextStyle.regular
                                  .copyWith(color: Colors.grey.shade700)),
                          Text("M",
                              style: CommonTextStyle.small
                                  .copyWith(fontWeight: FontWeight.w500)),
                          const SizedBox(width: 18),
                          Text("Color: ",
                              style: CommonTextStyle.regular
                                  .copyWith(color: Colors.grey.shade700)),
                          Text("Red",
                              style: CommonTextStyle.small
                                  .copyWith(fontWeight: FontWeight.w500)),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "₹400",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.redAccent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 6),
                            child: Row(
                              children: [
                                Icon(Icons.remove, size: 15, color: Colors.red),
                                const SizedBox(width: 4),
                                Text("1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14)),
                                const SizedBox(width: 4),
                                Icon(Icons.add, size: 16, color: Colors.red),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
