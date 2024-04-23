import 'package:get/get.dart';
import 'package:redis_mobile_manager/pages/home/home_state.dart';
import '../../common/bindings/redis_connects_controller.dart';
import '../../common/vo/redis_vo_entity.dart';


class HomeLogic extends GetxController {

  final HomeState state = HomeState();

  final redisConnectsController = Get.find<RedisConnectsController>();

  @override
  void onInit() {
    state.isLoading.value = true;
    super.onInit();
    state.redisVoList = redisConnectsController.getRedisVoAll();
    state.isLoading.value = true;
    update();
  }


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


  String getPageName() {
    switch (state.selectedIndex) {
      case 0:
        return "home";
      case 1:
        return "logs";
      case 2:
        return "about";
      case 3:
        return "settings";
      default:
        return "Home";
    }
  }




}
