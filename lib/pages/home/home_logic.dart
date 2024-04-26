import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/pages/home/home_state.dart';
import 'index.dart';


class HomeLogic extends GetxController {

  final HomeState state = HomeState();
  final redisConnectsController = Get.find<RedisConnectsController>();
  final sharedService = Get.find<SharedService>();



  @override
  void onInit() {
    super.onInit();
    state.isLoading.value = true;
    state.redisVoList = redisConnectsController.getRedisVoAll();
    state.isLoading.value = false;

    //
    update();
  }


  //添加一个连接
  void addOrUpdateRedisVo(RedisVoEntity redisVo) {
    for (var i = 0; i < state.redisVoList.length; i++) {
      if (state.redisVoList[i].id == redisVo.id) {
        state.redisVoList[i] = redisVo;
        update();
        return;
      }
    }
    state.redisVoList.add(redisVo);
    update();
  }


  // 清楚所有连接
  void clearRedisVoList() {
    state.redisVoList.clear();
    redisConnectsController.deleteAllRedisVo();
    sharedService.removeKey(redisConnectsController.key);
    update();
  }

  // 按照index删除连接
  void deleteRedisVoByIndex(int index) {
    redisConnectsController.deleteRedisVo(state.redisVoList[index]);
    update();
  }


  // 更新设备屏幕类型
  void updateDeviceType(BuildContext context){
    state.deviceType = DeviceUtils.getDeviceType(context);
    update();
  }

  // 修改当前选中页
  void changeSelectedPage(int index) {
    state.selectedIndex = index;
    state.pageController.jumpToPage(index);
    update();
  }





}
