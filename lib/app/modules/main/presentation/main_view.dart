import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/ui/colors/colors.dart';
import '../../../../core/ui/widgets/moleculs/m_bottom_navigation/m_bottom_navigation.dart';
import '../../../../core/ui/widgets/organigrams/scaffold/o_scaffold.dart';
import '../../home/presentation/home_view.dart';
import '../../mall/presentation/mall_view.dart';
import '../../discover/presentation/discover_view.dart';
import '../../inbox/presentation/inbox_view.dart';
import '../../account/presentation/account_view.dart';
import 'main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OScaffold(
      backgroundColor: AppColors.white,
      body: Obx(() => _getCurrentPage()),
      bottomNavigationBar: Obx(() => MBottomNavigation(
        currentIndex: controller.currentIndex.value,
        onTap: controller.changeTab,
      )),
    );
  }

  Widget _getCurrentPage() {
    switch (controller.currentIndex.value) {
      case 0:
        return const HomeView();
      case 1:
        return const MallView();
      case 2:
        return const DiscoverView();
      case 3:
        return const InboxView();
      case 4:
        return const AccountView();
      default:
        return const HomeView();
    }
  }
}
