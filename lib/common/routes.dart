import 'package:get/get.dart';
import 'package:redis_mobile_manager/pages/home/home_binding.dart';
import 'package:redis_mobile_manager/pages/home/home_view.dart';

var routes = [
  GetPage(name: '/', page: () => const HomePage(), binding: HomeBinding()),
];
