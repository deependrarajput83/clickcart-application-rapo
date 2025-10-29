import 'package:clickcart/utilitis/textstyel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/common_container.dart';
import '../../../../controller/homepagecontroller/fashionapicontroller.dart';
import '../../../../utilitis/color.dart';
import 'fashioncategorydatils.dart';

class Fashiontab extends StatelessWidget {
  Fashiontab({super.key});
  final FashionApi fashionApi = Get.put(FashionApi());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (fashionApi.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      if (fashionApi.fashionList.isEmpty) {
        return const Center(child: Text("No data found "));
      }
      return GridView.builder(
          itemCount: fashionApi.fashionList.length,
          padding: EdgeInsets.only(top: 15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 10,
              childAspectRatio: 0.75),
          itemBuilder: (context, index) {
            final item = fashionApi.fashionList[index];
            return GestureDetector(
              onTap: () {
                Get.to(FashionCategoryDatils(selectedFashion: item));
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
                      // height: Get.height * 0.20,
                      // width: Get.width * 0.45,
                      image: ClipRRect(
                        child: Image.network(
                          item.image ?? '',
                          fit: BoxFit.fill,
                          height: Get.height * 0.20,
                          width: Get.width * 0.45,
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
                    item.title ?? '',
                    style: CommonTextStyle.medium,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$ ${item.price?.toStringAsFixed(0) ?? '0'}",
                        style: CommonTextStyle.medium,
                      ),
                      SizedBox(width: Get.width * 0.25),
                      Text(
                        "₹400",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            decorationThickness: 2,
                            decorationColor: Colors.grey,
                            fontSize: 13,
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
