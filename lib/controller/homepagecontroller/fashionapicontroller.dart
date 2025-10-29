import 'dart:convert';

import 'package:clickcart/model/homepagemodel/fashionmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FashionApi extends GetxController {
  var fashionList = <Fashionmodel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getCloth();
  }

  Future<void> getCloth() async {
    try {
      isLoading(true);
      final response =
          await http.get(Uri.parse("https://fakestoreapi.com/products"));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        fashionList.clear();
        for (var item in data) {
          fashionList.add(Fashionmodel.fromJson(item));
        }
        print("Data loaded: ${fashionList.length} items");
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
