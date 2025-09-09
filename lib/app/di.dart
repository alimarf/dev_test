import 'package:dev_test_app/app/modules/mall/di.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'modules/main/di.dart';

class AppDependencyInjection {
  AppDependencyInjection();

  Future<void> init() async {
    Get.lazyPut(() => CancelToken(), fenix: true);

    MainDependencyInjection().init();
    MallDependencyInjection().init();
  }
}
