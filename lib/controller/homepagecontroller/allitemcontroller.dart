import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../model/homepagemodel/allitemmodel.dart';

class Allitemcontroller extends GetxController {
  var AllList = <AllitemModel>[].obs;
  var isLodaing = true.obs;
  @override
  void onInit() {
    super.onInit();
    getAll();
  }

  Future<void> getAll() async {
    try {
      isLodaing(true);
      final response =
          await http.get(Uri.parse("https://api.escuelajs.co/api/v1/products"));
      if (response.statusCode == 200) {
        var x = jsonDecode(response.body);
        AllList.clear();
        for (var i in x) {
          AllList.add(AllitemModel.fromJson(i));
        }
        print("data loaded:${AllList.length}item");
      } else {
        print("API Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching data: $e");
    } finally {
      isLodaing(false);
    }
  }
}
