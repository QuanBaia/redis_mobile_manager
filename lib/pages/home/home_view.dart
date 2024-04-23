import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/service/shared_service.dart';
import 'package:shimmer/shimmer.dart';

import 'index.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final _logic = Get.find<HomeLogic>();
  final _sharedService = Get.find<SharedService>();




  Widget _buildLoading(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: colorScheme.primary,
          highlightColor: colorScheme.primaryContainer,
          direction: ShimmerDirection.ltr,
          child: ListTile(
              title: Container(
                height: 10,
                color: colorScheme.primary,
              ),
              subtitle: Container(
                height: 10,
                color: colorScheme.primary,
              ),
              trailing: Container(
                height: 40,
                width: 40,
                color: colorScheme.primary,
              )),
        );
      },
    );
  }


  Widget _redisListView(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Obx(() {
      return ListView.builder(
          itemCount: _logic.state.redisVoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Slidable(
              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  TextButton(
                    onPressed: () {},
                    child:Text("删除",style: TextStyle(color: colorScheme.error),),
                  ),
                  TextButton(
                    onPressed: () {},
                    child:Text("编辑",style: TextStyle(color: colorScheme.primary),),
                  ),
                ],
              ),
              child: ListTile(
                title:
                Text(_logic.state.redisVoList[index].connectionName ?? ''),
                subtitle: Text(_logic.state.redisVoList[index].host ?? ''),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
              ),
            );
          });
    });
  }


  Widget _buildHomePageBody(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Obx(() {
        return _logic.state.redisVoList.isEmpty
            ? const EmptyView()
            : _redisListView(context);
      }),
    );
  }




  @override
  Widget build(BuildContext context) {

    Map<String, Widget> pages = {
      'home': Obx(() {
        return _logic.state.isLoading.value
            ? _buildLoading(context)
            : _buildHomePageBody(context);
      }),
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
        actions: [
          IconButton(
              onPressed: () {
                _sharedService.removeKey("redis_connect");
              },
              icon: const Icon(Icons.close))
        ],
      ),
      floatingActionButton: FloatingButton(),
      // 侧边栏
      drawer: MenuPage(),

      body: Obx(() {
        return PageTransitionSwitcher(
          duration: const Duration(milliseconds: 1000),
          transitionBuilder: (Widget child, Animation<double> primaryAnimation,
              Animation<double> secondaryAnimation) {
            return FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: pages[_logic.getPageName()],
        );
      }),
    );
  }
}
