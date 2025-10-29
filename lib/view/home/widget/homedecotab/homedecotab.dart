import 'package:clickcart/utilitis/color.dart';
import 'package:clickcart/utilitis/textstyel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/common_container.dart';
import '../../../../controller/homepagecontroller/eletricproducttab.dart';
import 'homedecodatils.dart';

class Decorationpage extends StatelessWidget {
  Decorationpage({super.key});
  Electricproduct electricproduct = Get.put(Electricproduct());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (electricproduct.isloading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (electricproduct.ElcList.isEmpty) {
          return const Center(child: Text("No data found"));
        }
        return GridView.builder(
            itemCount: electricproduct.ElcList.length,
            padding: EdgeInsets.only(top: 15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 10,
                childAspectRatio: 0.79),
            itemBuilder: (context, index) {
              final product = electricproduct.ElcList[index];
              return GestureDetector(
                onTap: () {
                  Get.to(homodecoCategoryDatils(
                    Homeitem: product,
                    index: index,
                  ));
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
                            product.thumbnail ?? '',
                            fit: BoxFit.fill,
                            height: Get.height * 0.20,
                            width: Get.width * 0.4,
                          ),
                        ),
                        icons: Icons.favorite,
                        onPressed: () {
                          print("Added to favorites!");
                        },
                        text:
                            "\$ ${product.discountPercentage?.toStringAsFixed(0) ?? '0'}",
                      ),
                    ),
                    SizedBox(height: Get.height * 0.010),
                    Text(
                      product.title ?? '',
                      style: CommonTextStyle.medium,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$${product.price}",
                          style: CommonTextStyle.medium,
                        ),
                        SizedBox(width: Get.width * 0.23),
                        Text(
                          "\$${"11"}",
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
