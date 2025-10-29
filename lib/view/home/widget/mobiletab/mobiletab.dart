import 'package:clickcart/utilitis/color.dart';
import 'package:clickcart/utilitis/textstyel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/common_container.dart';
import '../../../../controller/homepagecontroller/mobileapicantroller.dart';
import 'modiletabdatils.dart';

class MobileTab extends StatelessWidget {
  MobileTab({super.key});
  MobileTabApi mobileTabApi = Get.put(MobileTabApi());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (mobileTabApi.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      if (mobileTabApi.MobileList.isEmpty) {
        return const Center(
          child: Text("No Data found"),
        );
      }
      return GridView.builder(
          itemCount: mobileTabApi.MobileList.length,
          padding: EdgeInsets.only(top: 15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 10,
              childAspectRatio: 0.75),
          itemBuilder: (context, index) {
            final mobileitem = mobileTabApi.MobileList[index];
            return GestureDetector(
              onTap: () {
                Get.to(
                    Mobilecategorydatils(Mobileitem: mobileitem, index: index));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: CommonContainer(
                      color:
                          ConColor.concolor1[index % ConColor.concolor1.length],
                      image: ClipRRect(
                        child: Image.network(
                          mobileitem.thumbnail ?? '',
                          fit: BoxFit.fill,
                          height: Get.height * 0.20,
                          width: Get.width * 0.4,
                        ),
                      ),
                      icons: Icons.favorite,
                      onPressed: () {
                        print("Added to favorites!");
                      },
                      text: "${mobileitem.discountPercentage}%",
                    ),
                  ),
                  SizedBox(height: Get.height * 0.010),
                  Text(
                    "${mobileitem.title ?? ""}",
                    style: CommonTextStyle.medium,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$${mobileitem.price ?? ""}",
                        style: CommonTextStyle.medium,
                      ),
                      SizedBox(width: Get.width * 0.18),
                      Text(
                        "\$20",
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
    });
  }
}
