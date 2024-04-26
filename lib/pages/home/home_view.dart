import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/pages/home/widget/navigation_rail_view.dart';

import 'index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _logic = Get.find<HomeLogic>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _logic.updateDeviceType(context);
  }

  // 构建页面视图
  Widget _buildPageView(){
    return PageView(
      controller: _logic.state.pageController,
      children: homeRoutes.map((e) => e['page'] as Widget).toList(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(Content.homePageTitle.tr),
        actions: [
          Tooltip(
            message: Content.homePageClearRedisVoList.tr,
            child: IconButton(
                onPressed: () {
                  _logic.clearRedisVoList();
                },
                icon: const Icon(Icons.delete_forever)
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingButton(),
      // 侧边栏
      bottomNavigationBar: _logic.state.deviceType == DeviceTypeEnum.small ? BottomBarView() : null,
      body: Row(
        children: [
          _logic.state.deviceType != DeviceTypeEnum.small ? NavigationRailView() : Container(),
          Expanded(
            child: _buildPageView(),
          ),
        ],
      ),
    );
  }
}
