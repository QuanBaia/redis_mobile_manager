import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/pages/home/add/add_view.dart';
import '../index.dart';

class FloatingButton extends StatelessWidget {
  FloatingButton({super.key});

  final MenuPageController _menuLogic = Get.find();

  Widget _buildHomeFloatingButton() {
    return Tooltip(
      message: Content.homePageAddButtonHint.tr,
      child: OpenContainer(
        closedBuilder: (context, voidCallBack) {
          return Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              color: Color(0xff07444b),
            ),
            child: const Icon(
              Icons.add,
              size: 24,
              color: Colors.white,
            ),
          );
        },
        openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
          return const AddPage();
        },
        tappable: true,
        transitionType: ContainerTransitionType.fade,
        transitionDuration: const Duration(milliseconds: 500),
        routeSettings: const RouteSettings(arguments: "你好") ,
        openColor: Colors.transparent,
        closedColor: Colors.transparent,


      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      switch (_menuLogic.selectedIndex) {
        case 0:
          return _buildHomeFloatingButton();
        case 1:
          return Container();
        case 2:
          return Container();
        case 3:
          return Container();
        default:
          return _buildHomeFloatingButton();
      }
    });
  }
}
