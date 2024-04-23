import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/bindings/redis_connects_controller.dart';


class Binding extends Bindings{
  @override
  void dependencies()  {
    // 全局 Get.put()
    // 添加全局redis connect 的管理 ， 保证每个页面都可以访问到
    Get.put(RedisConnectsController());

  }

}
