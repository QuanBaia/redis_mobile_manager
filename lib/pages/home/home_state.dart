import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/vo/redis_vo_entity.dart';

import '../../common/service/shared_service.dart';

class HomeState {
  final _shadedService = Get.find<SharedService>();
  final RxList<RedisVoEntity> _list = <RedisVoEntity>[].obs;
  final key = "redis_list";

  HomeState() {}
}
