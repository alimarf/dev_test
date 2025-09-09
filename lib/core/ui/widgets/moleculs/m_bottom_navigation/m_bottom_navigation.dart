import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../colors/colors.dart';

// Custom colors for bottom navigation

class MBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const MBottomNavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(
              index: 0,
              icon: 'assets/icons/ic_home.png',
              activeIcon: 'assets/icons/ic_home_green.png',
              label: 'HOME',
              isActive: currentIndex == 0,
            ),
            _buildNavItem(
              index: 1,
              icon: 'assets/icons/ic_mall.png',
              activeIcon: 'assets/icons/ic_mall_green.png',
              label: 'MALL',
              isActive: currentIndex == 1,
            ),
            _buildNavItem(
              index: 2,
              icon: 'assets/icons/ic_discover.png',
              activeIcon: 'assets/icons/ic_discover.png',
              label: 'DISCOVER',
              isActive: currentIndex == 2,
            ),
            _buildNavItem(
              index: 3,
              icon: 'assets/icons/ic_inbox.png',
              activeIcon: 'assets/icons/ic_inbox.png',
              label: 'INBOX',
              isActive: currentIndex == 3,
            ),
            _buildNavItem(
              index: 4,
              icon: 'assets/icons/ic_account.png',
              activeIcon: 'assets/icons/ic_account.png',
              label: 'ACCOUNT',
              isActive: currentIndex == 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String icon,
    required String activeIcon,
    required String label,
    required bool isActive,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.only(top: 17),
        width: 79,
        child: Column(
          children: [
            Image.asset(
              isActive ? activeIcon : icon,
              width: 6.w,
              height: 6.w,
              color: isActive
                  ? AppColors.selectedColor
                  : AppColors.unselectedColor,
            ),
            SizedBox(height: 0.5.h),
            Text(
              label,
              style: GoogleFonts.roboto(
                fontSize: 10.sp,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                color: isActive
                    ? AppColors.selectedColor
                    : AppColors.unselectedColor,
              ),
            ),
            if (isActive) ...[
              Container(
                width: 79,
                height: 0.2.h,
                decoration: BoxDecoration(
                  color: AppColors.selectedColor,
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
