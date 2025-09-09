import 'package:get/get.dart';

import 'mall_controller.dart';

class MallBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MallController>(MallController());
  }
}
