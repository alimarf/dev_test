import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../routes/routes_constants.dart';

class MainController extends BaseController {
  final RxInt currentIndex = 0.obs;

  final List<String> routes = [
    HomeRoutes.HOME,
    MallRoutes.MALL,
    DiscoverRoutes.DISCOVER,
    InboxRoutes.INBOX,
    AccountRoutes.ACCOUNT,
  ];

  void changeTab(int index) {
    currentIndex.value = index;
  }
}
