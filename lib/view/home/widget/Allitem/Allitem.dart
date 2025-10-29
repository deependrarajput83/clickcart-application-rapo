import 'package:clickcart/utilitis/textstyel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/common_container.dart';
import '../../../../controller/homepagecontroller/allitemcontroller.dart';

class AllTab extends StatelessWidget {
  AllTab({super.key});
  Allitemcontroller allitemcontroller = Get.put(Allitemcontroller());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (allitemcontroller.isLodaing.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (allitemcontroller.AllList.isEmpty) {
          return Center(
            child: Text("No data found"),
          );
        }
        return GridView.builder(
            itemCount: 40,
            padding: EdgeInsets.only(top: 15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 10,
                childAspectRatio: 0.79),
            itemBuilder: (context, index) {
              final all = allitemcontroller.AllList[index];
              return GestureDetector(
                onTap: () {
                  //Get.to(FashionCategoryDatils());
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: CommonContainer(
                        image: ClipRRect(
                          child: Image.network(
                            all.images?[0] ?? "https://via.placeholder.com/150",
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
                      all.title ?? '',
                      style: CommonTextStyle.medium,
                    ),
                    Row(
                      children: [
                        Text(
                          " ₹ 200",
                          style: CommonTextStyle.medium,
                        ),
                        SizedBox(width: Get.width * 0.15),
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
            });
      },
    );
  }
}
