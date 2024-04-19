import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/i18n/content.dart';
import 'home_logic.dart';
import 'index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<HomeLogic>();
    final state = logic.state;

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
      floatingActionButton: const FloatingButton(),
      // 侧边栏
      drawer: Drawer(
          semanticLabel: 'hhhhhhhhhh',
      ),


      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: logic.redisList.isEmpty
            ? const EmptyView()
            : Obx(() => const RedisListView()),
      ),
    );
  }
}
