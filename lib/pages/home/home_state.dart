import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class HomeState {

  final RxBool _isLoading = false.obs;
  get isLoading => _isLoading;
  set isLoading(value) => _isLoading.value = value;

  final RxList<RedisVoEntity> _redisVoList = RxList<RedisVoEntity>();
  set redisVoList(List<RedisVoEntity> value) => _redisVoList.value = value;
  List<RedisVoEntity> get  redisVoList => _redisVoList;


  //控制首页索引
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(int value) => _selectedIndex.value = value;


  //当前的设备宽度信息 初始化为小屏
  final Rx<DeviceTypeEnum> _deviceType = DeviceTypeEnum.small.obs;
  DeviceTypeEnum get deviceType => _deviceType.value;
  set deviceType(DeviceTypeEnum value) => _deviceType.value = value;

  //页面控制器
  final PageController _pageController = PageController();
  PageController get pageController => _pageController;




  HomeState();
}
