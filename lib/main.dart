import 'package:flutter/material.dart';
import 'package:redis_mobile_manager/app.dart';
import 'package:redis_mobile_manager/global.dart';

Future<void> main() async{
  Global.init().then((value) {
    runApp(const MyApp());
  });
}
