import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/routes.dart';
import '../index.dart';

/// create by Quan Bai on 2024/4/25 下午9:31
/// contact me by email 2743611736@qq.com
/// file name bottom_bar_view.dart
/// description: 小屏状态下底部导航栏
class BottomBarView extends StatelessWidget {
  BottomBarView({super.key});

  final _logic = Get.find<HomeLogic>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: _logic.state.selectedIndex,
          type: BottomNavigationBarType.shifting,

          onTap: (index) {
            _logic.changeSelectedPage(index);
          },
          enableFeedback: true,
          items: homeRoutes.map((e) {
            return BottomNavigationBarItem(
              icon:Icon(e['icon'] as IconData),
              label:(e['title'] as String).tr,
            );
          }).toList(),
        ),
      );
    });
  }
}

