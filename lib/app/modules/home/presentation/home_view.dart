import 'package:dev_test_app/app/modules/home/widgets/discoveries_section.dart';
import 'package:dev_test_app/app/modules/home/widgets/service_section.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/ui/colors/colors.dart';

import '../../../../core/ui/widgets/organigrams/scaffold/o_scaffold.dart';
import '../widgets/header_section.dart';
import '../widgets/location_section.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OScaffold(
      backgroundColor: AppColors.white,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            ServiceSection(),
            DiscoveriesSection(),
            LocationSection(),
          ],
        ),
      ),
    );
  }
}
