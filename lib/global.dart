import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/service/shared_service.dart';

class Global {
  static Future init() async {
    // 初始化
    WidgetsFlutterBinding.ensureInitialized();

    // 设置状态栏颜色
    if (GetPlatform.isAndroid) {
      SystemUiOverlayStyle style = const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(style);
    }


    // 加载service
    Get.lazyPut(() => SharedService());

  }
}
