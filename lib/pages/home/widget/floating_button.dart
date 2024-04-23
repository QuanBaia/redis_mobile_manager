import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/vo/redis_vo_entity.dart';
import 'package:redis_mobile_manager/pages/home/add/add_view.dart';
import '../index.dart';

class FloatingButton extends StatelessWidget {
  FloatingButton({super.key});

  final HomeLogic _homeLogic = Get.find();

  Widget _buildHomeFloatingButton(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Tooltip(
      message: Content.homePageAddButtonHint.tr,
      child: OpenContainer(
        closedBuilder: (context, voidCallBack) {
          return Container(
            width: 56,
            height: 56,
            color: colorScheme.primary,
            child: const Icon(
              Icons.add,
              size: 24,
              color: Colors.white,
            ),
          );
        },
        openBuilder: (BuildContext context,
            void Function({Object? returnValue}) action) {
          return AddPage();
        },
        tappable: true,
        transitionType: ContainerTransitionType.fade,
        transitionDuration: const Duration(milliseconds: 500),
        routeSettings: RouteSettings(arguments: RedisVoEntity()),
        openColor: Colors.transparent,
        closedColor: Colors.transparent,
        onClosed: (value) {
          if (value != null) {
            _homeLogic.addOrUpdateRedisVo(
                RedisVoEntity.fromJson(value as Map<String, dynamic>));
          }
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      switch (_homeLogic.state.selectedIndex) {
        case 0:
          return _buildHomeFloatingButton(context);
        case 1:
          return Container();
        case 2:
          return Container();
        case 3:
          return Container();
        default:
          return _buildHomeFloatingButton(context);
      }
    });
  }


}
