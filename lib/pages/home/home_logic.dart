import 'package:get/get.dart';
import 'package:redis_mobile_manager/pages/home/home_state.dart';
import '../../common/bindings/redis_connects_controller.dart';


class HomeLogic extends GetxController {

  final HomeState state = HomeState();
  final _redisConnectsController = Get.find<RedisConnectsController>();

  //获取redis连接列表
  get redisList => _redisConnectsController.redisVoList;



  @override
  void onInit() {


    super.onInit();
  }




}
