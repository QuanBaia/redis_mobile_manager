/// create by Quan Bai on 2024/4/26 下午2:32
/// contact me by email 2743611736@qq.com
/// file name navigation_rail_view.dart
/// description: 当中屏幕或大屏幕的导航

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../index.dart';

class NavigationRailView extends StatelessWidget {
  NavigationRailView({super.key});

  final _logic = Get.find<HomeLogic>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        clipBehavior: Clip.antiAlias,
        decoration: decoration,
        child: NavigationRail(
          elevation: 1,
          extended:
              _logic.state.deviceType == DeviceTypeEnum.large ? true : false,
          unselectedLabelTextStyle:
              Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
          selectedLabelTextStyle:
              Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
          minExtendedWidth: 200,

          destinations: homeRoutes.map((e) {
            return NavigationRailDestination(
              icon: Icon(e['icon'] as IconData),
              label: Text((e['title'] as String).tr),
              selectedIcon: Icon(e['selectedIcon'] as IconData),
            );
          }).toList(),
          selectedIndex: _logic.state.selectedIndex,
          onDestinationSelected: (index) {
            _logic.changeSelectedPage(index);
          },
        ),
      );
    });
  }
}
