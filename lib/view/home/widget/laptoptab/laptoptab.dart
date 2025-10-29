import 'package:clickcart/utilitis/color.dart';
import 'package:clickcart/utilitis/textstyel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/common_container.dart';
import '../../../../controller/homepagecontroller/laptoptabapi.dart';
import 'laptopcategorydatils.dart';

class LaptopTab extends StatelessWidget {
  LaptopTab({super.key});
  LaptopPageApi laptopPageApi = Get.put(LaptopPageApi());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (laptopPageApi.islodaing.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (laptopPageApi.LaptopList.isEmpty) {
          return const Center(
            child: Text("No Data found"),
          );
        }
        return GridView.builder(
            itemCount: 10,
            padding: EdgeInsets.only(top: 15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 10,
                childAspectRatio: 0.70),
            itemBuilder: (context, index) {
              final unit = laptopPageApi.LaptopList[index];
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  Get.to(Laptopcategorydatils(Laptopitem: unit, index: index));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: CommonContainer(
                        color: ConColor
                            .concolor1[index % ConColor.concolor1.length],
                        image: ClipRRect(
                          child: Image.network(
                            unit.thumbnail ?? '',
                            fit: BoxFit.fill,
                            height: Get.height * 0.20,
                            width: Get.width * 0.4,
                          ),
                        ),
                        icons: Icons.favorite,
                        onPressed: () {
                          print("Added to favorites!");
                        },
                        text: "${unit.discountPercentage}%",
                      ),
                    ),
                    SizedBox(height: Get.height * 0.010),
                    Text(
                      "${unit.title}",
                      style: CommonTextStyle.medium,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$${unit.price}",
                          style: CommonTextStyle.medium,
                        ),
                        SizedBox(width: Get.width * 0.15),
                        Text(
                          "\$40",
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
            });
      },
    );
  }
}
