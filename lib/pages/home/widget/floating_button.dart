import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/bindings/menu_page_controller.dart';

import '../../../common/i18n/content.dart';


class FloatingButton extends StatelessWidget {
  FloatingButton({super.key});

  final MenuPageController _menuLogic = Get.find();

  Widget _buildHomeFloatingButton() {
    return Tooltip(
      message: Content.homePageAddButtonHint.tr,
      child: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      switch (_menuLogic.selectedIndex) {
        case 0:
          return _buildHomeFloatingButton();
        case 1:
          return Container();
        case 2:
          return Container();
        case 3:
          return Container();
        default:
          return _buildHomeFloatingButton();
      }
    });
  }


}
