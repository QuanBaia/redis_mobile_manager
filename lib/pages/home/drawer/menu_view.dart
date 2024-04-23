import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../index.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  final HomeLogic  _homeLogic  = Get.find();

  Widget _buildDrawerDestination(String text, Icon icon, Icon selectedIcon) {
    return NavigationDrawerDestination(
      enabled: true,
      label: Text(text),
      icon: icon,
      selectedIcon: selectedIcon,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return NavigationDrawer(
        selectedIndex: _homeLogic.state.selectedIndex,
        onDestinationSelected: (index) {
          _homeLogic.state.selectedIndex = index;
          Get.back();
        },
        children: [

          ListTile(
            leading: const FlutterLogo(size: 50),
            title: Text(Content.drawerTitle.tr),
            subtitle: Text(Content.drawerSubTitle.tr),
          ),
          _buildDrawerDestination(
            Content.drawerItemHome.tr,
            const Icon(Icons.computer),
            const Icon(Icons.keyboard_double_arrow_right),
          ),
          _buildDrawerDestination(
            Content.drawerItemLog.tr,
            const Icon(Icons.list_alt),
            const Icon(Icons.keyboard_double_arrow_right),
          ),
          _buildDrawerDestination(
            Content.drawerItemAbout.tr,
            const Icon(Icons.not_listed_location_outlined),
            const Icon(Icons.keyboard_double_arrow_right),
          ),
          _buildDrawerDestination(
            Content.drawerItemSetting.tr,
            const Icon(Icons.settings),
            const Icon(Icons.keyboard_double_arrow_right),
          ),

        ],
      );
    });
  }
}
