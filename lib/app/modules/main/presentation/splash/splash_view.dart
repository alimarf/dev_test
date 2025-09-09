import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/ui/colors/colors.dart';
import '../../../../../core/ui/widgets/organigrams/scaffold/o_scaffold.dart';
import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OScaffold(
      showBackground: false,
      backgroundColor: AppColors.white,
      body: Center(
        child: Image.asset(
          'assets/icons/ic_main_shop_plants.png',
          width: 100.w,
          height: 100.h,
        ),
      ),
    );
  }
}
