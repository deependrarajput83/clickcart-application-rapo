import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../model/homepagemodel/mobilemodel.dart';

class MobileTabApi extends GetxController {
  var MobileList = <MobileData>[].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    getMobilefun();
  }

  Future<void> getMobilefun() async {
    try {
      isLoading(true);
      final response = await http.get(
          Uri.parse("https://dummyjson.com/products/category/smartphones"));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        MobileList.clear();
        for (var i in data['products']) {
          MobileList.add(MobileData.fromJson(i));
        }
        print("Data loaded:${MobileList.length}items");
      } else {
        print("API Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching data: $e");
    } finally {
      isLoading(false);
    }
  }
}
