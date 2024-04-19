import 'package:get/get.dart';

class HomeState {

  final RxBool _isLoading = false.obs;

  get isLoading => _isLoading;
  set isLoading(value) => _isLoading.value = value;

  HomeState() {}
}
