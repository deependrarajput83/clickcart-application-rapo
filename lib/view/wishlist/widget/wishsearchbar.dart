import 'package:clickcart/view/home/widget/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBarPage extends StatelessWidget {
  const SearchBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.050,
      width: Get.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(50)),
      child: TextFormField(
        readOnly: true,
        onTap: () {
          Get.to(SearchPage());
        },
        decoration: InputDecoration(
            hintText: "Search here",
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}
