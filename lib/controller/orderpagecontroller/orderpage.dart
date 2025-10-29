import 'package:get/get.dart';

class RatingPageController extends GetxController {
  RxInt tabstar = 0.obs;
  void fillstar(int index) {
    tabstar.value = index;
  }
}

class SwitchToggleController extends GetxController {
  RxList<bool> isSwitch = [true, true, false, false].obs;
  void onSwitch(int index, bool value) {
    isSwitch[index] = value;
  }
}

class RateUsController extends GetxController {
  RxInt selectedRating = (-1).obs;

  void updateRating(int value) {
    selectedRating.value = value;
  }
}
