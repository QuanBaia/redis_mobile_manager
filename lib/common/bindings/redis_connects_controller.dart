import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/service/shared_service.dart';
import '../vo/redis_vo_entity.dart';
import 'package:logger/logger.dart';

class RedisConnectsController extends GetxController {
  //全局变量，用于存储Redis连接
  RxList<RedisVoEntity> redisVoList = <RedisVoEntity>[].obs;
  String key = "redis_connect";
  SharedService sharedService = Get.find();

  var logger = Logger(
    printer: PrettyPrinter(),
  );

  // 添加Redis连接
  addOrUpdateRedisVo(RedisVoEntity redisVo) {
    redisVoList.add(redisVo);
    sharedService.addListValueOrUpdate(key, redisVo.toJson());
    update();
  }

  // 删除Redis连接
  deleteRedisVo(RedisVoEntity redisVo) {
    redisVoList.remove(redisVo);
    sharedService.removeListValue(key, redisVo.id ?? 0);
    update();
  }


  // 初始化的时候，从本地获取Redis连接
  @override
  void onInit() async {
    // 计时毫米级，打印日志
    DateTime now = DateTime.now();
    int microsecond = now.microsecond;
    logger.d("find all redis connect from local storage start ... Now: $now");
    //查询所有Redis连接到redisVoList
    List<Map<String, dynamic>> redisVoListJson = await sharedService
        .getListValues(key);
    if (redisVoListJson != null || redisVoListJson.isNotEmpty) {
      for (var item in redisVoListJson) {
        RedisVoEntity redisVo = RedisVoEntity.fromJson(item);
        redisVoList.add(redisVo);
        update();
      }
    }
    now = DateTime.now();
    double ms = (now.microsecond - microsecond) / 1000;
    logger.d("find all redis connect from local storage end ... Time: ${-ms} ms");


    super.onInit();
  }





}
