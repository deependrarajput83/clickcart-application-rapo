import 'package:clickcart/model/homepagemodel/fashionmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/homepagecontroller/homepagecontroller.dart';
import '../../../../utilitis/textstyel.dart';
import 'moreproduct.dart';

class FashionCategoryDatils extends StatelessWidget {
  FashionCategoryDatils({super.key, required this.selectedFashion});
  final Fashionmodel selectedFashion;
  SizesC selectedcon = Get.put(SizesC());
  Bottombutton bottombutton = Get.put(Bottombutton());
  List<String> Clothsize = ["XS", "S", "M", "L", "XL", "XXL"];
  List<Color> ClothColor = [
    Colors.cyan,
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.yellow,
    Colors.deepOrange
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Stack(
              children: [
                Container(
                  height: Get.height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                  child: ClipRRect(
                    child: Image.network(
                      selectedFashion.image ?? '',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                      Container(
                        height: Get.height * 0.05,
                        width: Get.width * 0.2,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade500)),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border_outlined)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Expanded(
                      child: Text(
                        selectedFashion.title ?? '',
                        style: CommonTextStyle.Details,
                      ),
                    ),
                  ]),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                          ),
                          Text(
                            "${selectedFashion.rating?.rate ?? 0}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                              "(${selectedFashion.rating?.count ?? 0} reviews)"),
                        ],
                      ),
                      Container(
                        height: Get.height * 0.028,
                        width: Get.width * 0.22,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "20,343",
                            ),
                            Text("solt")
                          ],
                        ),
                      ),
                      Text(
                        "\$${selectedFashion.price?.toStringAsFixed(0) ?? '0'}",
                        style: CommonTextStyle.Details,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Divider(
                    thickness: 0.5,
                  ),
                  Text("Sizes",
                      style: CommonTextStyle.Details.copyWith(fontSize: 15)),
                  Obx(
                    () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(6, (index) {
                          bool isSelected =
                              selectedcon.selectedSizeIndex.value == index;
                          return Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: GestureDetector(
                              onTap: () {
                                selectedcon.selectedSizeIndex(index);
                              },
                              child: Container(
                                height: 28,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: isSelected
                                        ? Colors.orange
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey.shade200)),
                                child: Center(child: Text(Clothsize[index])),
                              ),
                            ),
                          );
                        })),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Text("Color",
                      style: CommonTextStyle.Details.copyWith(fontSize: 15)),
                  Obx(
                    () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(6, (index) {
                          bool isSelected =
                              selectedcon.selectedColorIndex.value == index;
                          return Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: GestureDetector(
                              onTap: () {
                                selectedcon.selectedColorIndex(index);
                              },
                              child: Container(
                                height: 28,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: ClothColor[index],
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: isSelected
                                            ? Colors.black
                                            : Colors.white,
                                        width: 2)),
                              ),
                            ),
                          );
                        })),
                  ),
                  Text(
                    "Description",
                    style: CommonTextStyle.Details,
                  ),
                  Text(
                    selectedFashion.description ?? "",
                    style: CommonTextStyle.small.copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    "Review and rating",
                    style: CommonTextStyle.Details,
                  ),
                  Obx(
                    () => Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(5, (index) {
                          bool isSelectedStar =
                              index <= selectedcon.selectedStarIndex.value;
                          return IconButton(
                              onPressed: () {
                                selectedcon.selectStar(index);
                              },
                              icon: Icon(Icons.star,
                                  color: isSelectedStar
                                      ? Colors.orange
                                      : Colors.grey));
                        })),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Read all Comment"), Icon(Icons.reviews)],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    "More product",
                    style: CommonTextStyle.Details,
                  ),
                  Fashiontabmore()
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                bottombutton.decrement();
              },
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey.shade300,
                child: Icon(Icons.remove),
              ),
            ),
            Obx(
              () => Text("${bottombutton.additem.value}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            GestureDetector(
              onTap: () {
                bottombutton.incerment();
              },
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey.shade300,
                child: Icon(Icons.add),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Text(
                "Add to Cart",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
