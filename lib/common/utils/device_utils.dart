/// create by Quan Bai on 2024/4/25 下午5:35
/// contact me by email 2743611736@qq.com
/// file name DeviceUtils.dart
/// description: 设备相关工具类
import 'package:flutter/material.dart';
import 'package:redis_mobile_manager/common/enum/device_type_enum.dart';

class DeviceUtils {
  /// 获取设备屏幕类型
  static DeviceTypeEnum getDeviceType(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    switch (deviceSize.width) {
      case < 450:
        return DeviceTypeEnum.small;
      case < 1000:
        return DeviceTypeEnum.medium;
      case < 1500 || > 1500:
        return DeviceTypeEnum.large;
      default:
        return DeviceTypeEnum.small;
    }
  }
}
