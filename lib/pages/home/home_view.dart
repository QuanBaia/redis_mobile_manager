import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});


  final MenuPageController _menuPageController = Get.find();

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<HomeLogic>();
    final state = logic.state;
    final homeStyle = HomeStyle();


    Widget buildHomePageBody() {
      return Container(
        height: double.infinity,
        width: double.infinity,
        padding: homeStyle.padding,
        child: logic.redisList.isEmpty
            ? const EmptyView()
            : Obx(() => const RedisListView()),
      );
    }


    Map<String, Widget> pages = {
      'home': buildHomePageBody(),
      'settings': const SettingPage(),
      'logs': const LogsView(),
      'about': const AboutView(),
    };


    return Scaffold(
      appBar: AppBar(
        title: Text(Content.homePageTitle.tr),
        leading: Builder(builder: (BuildContext context) {
          return Tooltip(
            message: Content.homePageMenu.tr,
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          );
        }),
      ),
      floatingActionButton: FloatingButton(),

      // 侧边栏
      drawer: MenuPage(),

      body: Obx(() {
        return PageTransitionSwitcher(
          duration: const Duration(milliseconds: 1000),
          transitionBuilder: (Widget child, Animation<double> primaryAnimation, Animation<double> secondaryAnimation) {
            return FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: pages[_menuPageController.getPageName()],
        );
      }),

    );
  }

}
