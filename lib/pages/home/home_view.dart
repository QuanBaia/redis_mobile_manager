import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/i18n/content.dart';
import 'home_logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<HomeLogic>();
    final state = logic.state;

    return Scaffold(
      appBar: AppBar(
        title: Text(Content.homePageTitle.tr),
      ),
      body: Center(
        child: Text("你好 ${ Get.fallbackLocale }"),
      ),
    );
  }
}
