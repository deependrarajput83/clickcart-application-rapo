import 'dart:convert';

import 'package:clickcart/model/homepagemodel/laptopmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LaptopPageApi extends GetxController {
  var LaptopList = <Products1>[].obs;
  var islodaing = true.obs;
  @override
  void onInit() {
    super.onInit();
    getLaptop();
  }

  Future<void> getLaptop() async {
    try {
      islodaing(true);
      final response = await http.get(Uri.parse(
          'https://mocki.io/v1/607d9ab3-3679-408f-a18a-e1dcd048ffb6'));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        if (data['products'] != null) {
          LaptopList.value = (data['products'] as List)
              .map((e) => Products1.fromJson(e))
              .toList();
        }
        print("Data loaded: ${LaptopList.length} items");
      } else {
        print("API Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching data: $e");
    } finally {
      islodaing(false);
    }
  }
}
