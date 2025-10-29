import 'package:get/get.dart';

class Bottomnavbar extends GetxController {
  RxInt selectedIndex = 0.obs;
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
