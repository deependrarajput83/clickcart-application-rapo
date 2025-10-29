import 'package:clickcart/model/homepagemodel/laptopmodel.dart';
import 'package:clickcart/utilitis/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/homepagecontroller/homepagecontroller.dart';
import '../../../../utilitis/textstyel.dart';
import '../fashiontab/moreproduct.dart';

class Laptopcategorydatils extends StatelessWidget {
  Laptopcategorydatils(
      {super.key, required this.Laptopitem, required this.index});
  final Products1 Laptopitem;
  Bottombutton bottombutton = Get.put(Bottombutton());
  SizesC sizesC = Get.put(SizesC());
  final int index;
  List<Color> concolor = [
    Color(0xFFB0BEC5),
    Color(0xFFE0E0E0),
    Color(0xFFFFD700)
  ];
  List<String> colorname = ["Space Gray", "Silver", "Golden"];
  List<String> ramOptions = ["8 GB", "16 GB", "32 GB", "64GB"];
  List<String> romOptions = ["258GB", "512GB", "1TB", "2TB"];
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
                    decoration: BoxDecoration(
                      color:
                          ConColor.concolor1[index % ConColor.concolor1.length],
                    ),
                    child: ClipRRect(
                      child: Image.network(
                        Laptopitem.thumbnail ?? '',
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
                            Laptopitem.title ?? '',
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
                                "${Laptopitem.rating ?? 0}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text("(2.6k reviews)"),
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
                            "\$${Laptopitem.price ?? 0}",
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
                      SizedBox(
                        height: Get.height * 0.005,
                      ),
                      Text(
                        "Description",
                        style: CommonTextStyle.Details,
                      ),
                      Text(
                        Laptopitem.description ?? "",
                        style: CommonTextStyle.small.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Text("Color",
                          style:
                              CommonTextStyle.Details.copyWith(fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Obx(
                        () => SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(3, (index) {
                              bool istaped =
                                  sizesC.selectedColorIndex.value == index;
                              return GestureDetector(
                                onTap: () {
                                  sizesC.selectedColorIndex(index);
                                },
                                child: Container(
                                  height: Get.height * 0.044,
                                  width: Get.width * 0.28,
                                  decoration: BoxDecoration(
                                    color:
                                        istaped ? Colors.orange : Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(color: Colors.grey.shade400),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: concolor[index],
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        colorname[index],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: istaped
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Text("Memory",
                          style:
                              CommonTextStyle.Details.copyWith(fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(4, (index) {
                            bool istaped = sizesC.selectedmemory.value == index;
                            return GestureDetector(
                              onTap: () {
                                sizesC.selectedmemory(index);
                              },
                              child: Container(
                                height: Get.height * 0.038,
                                width: Get.width * 0.18,
                                decoration: BoxDecoration(
                                  color: istaped ? Colors.orange : Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                ),
                                child: Center(
                                  child: Text(
                                    ramOptions[index],
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: istaped
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Text("Storage",
                          style:
                              CommonTextStyle.Details.copyWith(fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(4, (index) {
                            bool istaped =
                                sizesC.selectedstorage.value == index;
                            return GestureDetector(
                              onTap: () {
                                sizesC.selectedstorage(index);
                              },
                              child: Container(
                                height: Get.height * 0.038,
                                width: Get.width * 0.18,
                                decoration: BoxDecoration(
                                  color: istaped ? Colors.orange : Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                ),
                                child: Center(
                                  child: Text(
                                    romOptions[index],
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: istaped
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.local_shipping_outlined,
                                  color: Colors.orange),
                              title: Text("Delivery & Returns",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              trailing: Icon(Icons.arrow_forward_ios_rounded,
                                  size: 18),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Text(
                        "Other product",
                        style: CommonTextStyle.Details,
                      ),
                      Fashiontabmore()
                    ]),
              ),
            ]),
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
