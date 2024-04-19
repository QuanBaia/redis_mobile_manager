import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/i18n/content.dart';


class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});


  Widget _buildFloatingButton() {
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
    return _buildFloatingButton();
  }

}



