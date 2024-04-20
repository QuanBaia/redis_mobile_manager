import 'package:get/get.dart';

class MenuPageController extends GetxController {
  //menu page controller

  final _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  void changeSelectedIndex(int index) {
    _selectedIndex.value = index;
    Get.back();
    update();
  }

  String getPageName() {
    switch (selectedIndex) {
      case 0:
        return "home";
      case 1:
        return "logs";
      case 2:
        return "about";
      case 3:
        return "settings";
      default:
        return "Home";
    }
  }
}
