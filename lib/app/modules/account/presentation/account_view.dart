import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/ui/colors/colors.dart';
import '../../../../core/ui/widgets/organigrams/scaffold/o_scaffold.dart';
import 'account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OScaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Text(
          'ACCOUNT PAGE',
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
