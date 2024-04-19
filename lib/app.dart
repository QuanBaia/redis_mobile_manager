import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/binding.dart';
import 'package:redis_mobile_manager/pages/home/home_view.dart';
import 'common/routes.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
      initialBinding: Binding(),
      initialRoute: '/',
    );
  }
}
