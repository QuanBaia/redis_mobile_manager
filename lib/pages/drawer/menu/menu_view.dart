import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/bindings/menu_page_controller.dart';
import 'index.dart';

class MenuPage extends StatelessWidget {
   MenuPage({Key? key}) : super(key: key);

  final MenuPageController _menuPageController = Get.find();

  @override
  Widget build(BuildContext context) {

    return Obx(() {
      return NavigationDrawer(
        selectedIndex: _menuPageController.selectedIndex,
        onDestinationSelected: (index) => _menuPageController.changeSelectedIndex(index),

        children: [

          ListTile(
            leading: FlutterLogo(size: 50),
            title: Text(Content.drawerTitle.tr),
            subtitle: Text(Content.drawerSubTitle.tr),
          ),

          NavigationDrawerDestination(
            enabled: true,
            label: Text(Content.drawerItemHome.tr),
            icon: Icon(Icons.computer),
            selectedIcon: Icon(Icons.keyboard_double_arrow_right),

          ),


          NavigationDrawerDestination(
            enabled: true,
            label: Text(Content.drawerItemLog.tr),
            icon: Icon(Icons.construction_outlined),
            selectedIcon: Icon(Icons.keyboard_double_arrow_right),
          ),


          NavigationDrawerDestination(
            enabled: true,
            label: Text(Content.drawerItemAbout.tr),
            icon: Icon(Icons.touch_app),
            selectedIcon: Icon(Icons.keyboard_double_arrow_right),
          ),

          NavigationDrawerDestination(
            enabled: true,
            label: Text(Content.drawerItemSetting.tr),
            icon: Icon(Icons.settings),
            selectedIcon: Icon(Icons.keyboard_double_arrow_right),
          ),

        ],
      );
    });
  }
}
