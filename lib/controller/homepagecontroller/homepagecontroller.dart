import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxBool notification = false.obs;
  void onnotification(bool) {
    notification.value = bool;
  }
}

class SizesC extends GetxController {
  RxInt selectedSizeIndex = (1).obs;
  RxInt selectedColorIndex = (1).obs;
  RxInt selectedStarIndex = (-1).obs;
  RxInt selectedmemory = (1).obs;
  RxInt selectedstorage = (1).obs;
  void selectSize(int index) {
    selectedSizeIndex.value = index;
  }

  void sram(int index) {
    selectedmemory.value = index;
  }

  void srom(int index) {
    selectedstorage.value = index;
  }

  void selectColor(int index) {
    selectedColorIndex.value = index;
  }

  void selectStar(int index) {
    selectedStarIndex.value = index;
  }
}

class Bottombutton extends GetxController {
  RxInt additem = 1.obs;
  void incerment() {
    additem.value++;
  }

  void decrement() {
    if (additem.value > 1) {
      additem.value--;
    }
  }
}

class CheckBox extends GetxController {
  RxInt isClick = 0.obs;
  void tap(int index) {
    isClick.value = index;
  }
}

class ShippingController extends GetxController {
  RxInt ischoose = 0.obs;
  void tuch(int index) {
    ischoose.value = index;
  }
}

class Paymenttabseclection extends GetxController {
  RxInt ispaymenttabselcted = 0.obs;
  void ptab(int index) {
    ispaymenttabselcted.value = index;
  }
}
