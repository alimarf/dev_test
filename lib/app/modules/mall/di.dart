import 'package:get/get.dart';

import 'presentation/mall_controller.dart';

class MallDependencyInjection {
  MallDependencyInjection();

  Future<void> init() async {
    // CONTROLLERS
    Get.lazyPut<MallController>(() => MallController(), fenix: true);

    // MANAGERS

    // DATASOURCES

    // REPOSITORIES

    // USECASES
  }
}
