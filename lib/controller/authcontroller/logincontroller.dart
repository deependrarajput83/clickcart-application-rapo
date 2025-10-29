import 'package:get/get.dart';

class LoginController extends GetxController {
  var ischecked = false.obs;
  void check(bool value) {
    ischecked.value = value;
  }
}
