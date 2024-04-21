import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:redis_mobile_manager/common/app_theme.dart';
import 'package:redis_mobile_manager/common/binding.dart';
import 'package:redis_mobile_manager/common/i18n/date_local.dart';
import 'package:redis_mobile_manager/common/i18n/messages.dart';
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
      translations: Messages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("en", "US"),
      localeResolutionCallback: (locale, supportedLocales) {


        Moment.setGlobalLocalization(DateLocal.getLocalization(locale));
        //语言变化的时候修改时间变换
        //Moment.setGlobalLocalization(locale);
        return null;
      },
      themeMode: ThemeMode.system,
      theme: AppTheme.mainTheme,
      darkTheme: AppTheme.mainDarkTheme,
    );
  }


}
