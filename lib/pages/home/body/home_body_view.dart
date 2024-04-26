/// create by Quan Bai on 2024/4/25 下午8:05
/// contact me by email 2743611736@qq.com
/// file name home_body_view.dart
/// description: 首页主体视图

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import '../index.dart';

class HomeBodyView extends StatelessWidget {
  HomeBodyView({super.key});

  final HomeLogic _logic = Get.find();


  Widget _redisListView(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Obx(() {
      return ListView.builder(
          itemCount: _logic.state.redisVoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Slidable(
              startActionPane: ActionPane(
                extentRatio: _logic.state.deviceType == DeviceTypeEnum.small ? 0.4 : 0.2,
                motion: const ScrollMotion(),
                children: [
                  TextButton(
                    onPressed: () {
                      //删除
                      _logic.deleteRedisVoByIndex(index);
                    },
                    child: Text(
                      Content.tagDelete.tr,
                      style: TextStyle(color: colorScheme.error),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //编辑
                      Get.toNamed("/add",arguments: _logic.state.redisVoList[index]);
                    },
                    child: Text(
                      Content.tagEdit.tr,
                      style: TextStyle(color: colorScheme.primary),
                    ),
                  ),
                ],
              ),
              child: RedisListView(
                redisVoEntity: _logic.state.redisVoList[index],
              ),
            );
          });
    });
  }


  @override
  Widget build(BuildContext context) {
      return !_logic.state.isLoading.value ? Container(
        height: double.infinity,
        width: double.infinity,
        padding: pagePadding,
        child: Obx((){
          return _logic.state.redisVoList.isEmpty
              ? const EmptyView()
              : _redisListView(context);
        }),
      ) : const LoadingListView();
  }
}
