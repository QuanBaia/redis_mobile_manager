import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:redis_mobile_manager/common/service/shared_service.dart';

import '../vo/redis_vo_entity.dart';

class RedisConnectsController extends GetxController {
  //全局变量，用于存储Redis连接
  final RxList<RedisVoEntity> _redisVoList = <RedisVoEntity>[].obs;
  final String _key = "redis_connect";
  final SharedService _sharedService = Get.find();

  get key => _key;

  var logger = Logger(
    printer: PrettyPrinter(),
  );

  // 添加Redis连接
  addOrUpdateRedisVo(RedisVoEntity redisVo) {
    _redisVoList.add(redisVo);
    _sharedService.addListValueOrUpdate(_key, redisVo.toJson());
    update();
  }
  // 删除Redis连接
  deleteRedisVo(RedisVoEntity redisVo) {
    _redisVoList.remove(redisVo);
    _sharedService.removeListValue(_key, redisVo.id ?? "");
    update();
  }

  getRedisVoAll(){
    return _redisVoList;
  }


  // 初始化的时候，从本地获取Redis连接
  @override
  void onInit() async {

    Stopwatch stopwatch = Stopwatch()..start();
    logger.d("find all redis connect from local storage start ... ");
    //查询所有Redis连接到redisVoList
    List<Map<String, dynamic>> redisVoListJson = await _sharedService
        .getListValues(_key);
    if (redisVoListJson != null || redisVoListJson.isNotEmpty) {
      for (var item in redisVoListJson) {
        RedisVoEntity redisVo = RedisVoEntity.fromJson(item);
        _redisVoList.add(redisVo);
      }
    }
    //等待 毫秒 = 秒
    stopwatch.stop();
    logger.d("find all redis connect from local storage end ... Time: ${stopwatch.elapsed.inMilliseconds} ms");
    update();

    for (var redisVo in _redisVoList) {
      print("redisVo: ${redisVo.toJson()}");
    }

    super.onInit();
  }





}
