import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/ui/colors/colors.dart';
import '../../../../core/ui/widgets/organigrams/scaffold/o_scaffold.dart';
import 'discover_controller.dart';

class DiscoverView extends GetView<DiscoverController> {
  const DiscoverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OScaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Text(
          'DISCOVER PAGE',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
