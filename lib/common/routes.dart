import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/pages/home/home_binding.dart';
import 'package:redis_mobile_manager/pages/home/home_view.dart';

import '../pages/home/add/add_view.dart';
import '../pages/home/body/home_body_view.dart';
import '../pages/home/logs/logs_view.dart';
import '../pages/home/setting/setting_view.dart';
import 'i18n/content.dart';

var routes = [
  GetPage(name: '/', page: () =>  HomePage(), binding: HomeBinding()),
  GetPage(name: '/add', page: () => AddPage()),
];

var homeRoutes= [
  {'title':Content.drawerItemHome,'page':HomeBodyView(),'icon':Icons.home,'selectedIcon':Icons.home_outlined},
  {'title':Content.drawerItemLog,'page':LogsView(),'icon':Icons.history,'selectedIcon':Icons.history_outlined},
  {'title':Content.drawerItemSetting,'page':SettingView(),'icon':Icons.settings,'selectedIcon':Icons.settings_outlined},
];
