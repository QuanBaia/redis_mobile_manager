import 'package:get/get.dart';

import '../../common/vo/redis_vo_entity.dart';

class HomeState {

  final RxBool _isLoading = false.obs;

  get isLoading => _isLoading;
  set isLoading(value) => _isLoading.value = value;

  final RxList<RedisVoEntity> _redisVoList = RxList<RedisVoEntity>();
  set redisVoList(List<RedisVoEntity> value) => _redisVoList.value = value;
  List<RedisVoEntity> get  redisVoList => _redisVoList;



  HomeState() {}
}
