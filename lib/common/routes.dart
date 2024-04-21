import 'package:get/get.dart';
import 'package:redis_mobile_manager/pages/add/add_binding.dart';
import 'package:redis_mobile_manager/pages/add/add_view.dart';
import 'package:redis_mobile_manager/pages/home/home_binding.dart';
import 'package:redis_mobile_manager/pages/home/home_view.dart';

var routes = [
  GetPage(name: '/', page: () =>  HomePage(), binding: HomeBinding()),
  GetPage(name: '/add_host', page: () =>  AddPage(), binding: AddBinding()),
];
