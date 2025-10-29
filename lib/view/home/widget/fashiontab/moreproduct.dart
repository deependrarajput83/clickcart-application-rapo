import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/common_container.dart';
import '../../../../controller/homepagecontroller/fashionapicontroller.dart';
import '../../../../utilitis/textstyel.dart';

class Fashiontabmore extends StatelessWidget {
  Fashiontabmore({super.key});
  final FashionApi fashionApi = Get.put(FashionApi());
  final List<Color> lightColors = [
    Color(0xFFFFC1A1),
    Color(0xFFFFD28C),
    Color(0xFFFFF176),
    Color(0xFFA5D6A7),
    Color(0xFF81D4FA),
    Color(0xFFB39DDB),
    Color(0xFFFFAB91),
    Color(0xFFFFCC80),
    Color(0xFF90CAF9),
    Color(0xFF80CBC4),
    Color(0xFFF48FB1),
    Color(0xFFCE93D8),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (fashionApi.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (fashionApi.fashionList.isEmpty) {
          return const Center(child: Text("No data found 😢"));
        }
        return GridView.builder(
            itemCount: fashionApi.fashionList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 10,
                childAspectRatio: 0.78),
            itemBuilder: (context, index) {
              final item = fashionApi.fashionList[index];
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
                        color: lightColors[index % lightColors.length],
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
                          // 👇 This only triggers for the icon, not for the container tap
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
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$ ${item.price?.toStringAsFixed(0) ?? '0'}",
                          style: CommonTextStyle.medium,
                        ),
                        SizedBox(width: Get.width * 0.23),
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
