import 'dart:convert';

import 'package:clickcart/model/homepagemodel/homodecomodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Electricproduct extends GetxController {
  var ElcList = <Products>[].obs;
  var isloading = true.obs;
  @override
  void onInit() {
    super.onInit();
    getelectric();
  }

  Future<void> getelectric() async {
    try {
      isloading(true);
      final response = await http.get(
          Uri.parse("https://dummyjson.com/products/category/home-decoration"));
      if (response.statusCode == 200) {
        var eledata = jsonDecode(response.body);
        ElcList.clear();
        for (var item in eledata['products']) {
          ElcList.add(Products.fromJson(item));
        }
        print("Data loaded: ${ElcList.length} items");
      } else {
        print("API Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching data: $e");
    } finally {
      isloading(false);
    }
  }
}
