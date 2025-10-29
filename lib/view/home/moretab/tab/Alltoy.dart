import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/common_container.dart';
import '../../../../utilitis/textstyel.dart';

class AllDatilsToyPage extends StatelessWidget {
  const AllDatilsToyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Child Rotic Toy",
          style: CommonTextStyle.bold,
        ),
        Expanded(
          child: GridView.builder(
              itemCount: 10,
              padding: EdgeInsets.only(top: 15),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: CommonContainer(
                          image: ClipRRect(
                            child: Image.asset(
                              "assets/toy/robotic.png",
                              fit: BoxFit.fill,
                              height: Get.height * 0.20,
                              width: Get.width * 0.4,
                            ),
                          ),
                          icons: Icons.favorite,
                          onPressed: () {
                            print("Added to favorites!");
                          },
                          text: "20%",
                        ),
                      ),
                      SizedBox(height: Get.height * 0.010),
                      Text(
                        "Men's Bartlet jacket",
                        style: CommonTextStyle.medium,
                      ),
                      Row(
                        children: [
                          Text(
                            " ₹ 200",
                            overflow: TextOverflow.ellipsis,
                            style: CommonTextStyle.medium,
                          ),
                          SizedBox(width: Get.width * 0.18),
                          Text(
                            "₹400",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2,
                                decorationColor: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
