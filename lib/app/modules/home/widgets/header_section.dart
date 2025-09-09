import 'package:dev_test_app/core/ui/colors/colors.dart';
import 'package:dev_test_app/core/ui/widgets/atoms/text/a_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/ui/widgets/atoms/gap/a_gap.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.primary,
          child: SafeArea(
            child: Column(
              children: [
                // Logo Section
                AText(
                  'LOGO',
                  style: Get.context!.textTheme.headlineLarge?.copyWith(
                    fontSize: 44,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AGap(height: 5),
                // Next Appointment Text
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: AppColors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: AText(
                        'NEXT APPOINTMENT',
                        style: Get.context!.textTheme.bodySmall?.copyWith(
                          fontSize: 12,
                          color: AppColors.white,
                          letterSpacing: 1.6,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
                AGap(height: 9),

                // Appointment Details Bar
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/ic_calender.png',
                        width: 12,
                        height: 13,
                      ),
                      const SizedBox(width: 8),
                      AText(
                        '14 Oct 2020',
                        style: Get.context!.textTheme.bodySmall?.copyWith(
                          fontSize: 13,
                          color: AppColors.white,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Image.asset(
                        'assets/icons/ic_clock_green.png',
                        width: 12,
                        height: 13,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '12:30 PM',
                        style: Get.context!.textTheme.bodySmall?.copyWith(
                          fontSize: 13,
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Image.asset(
                        'assets/icons/ic_location_green.png',
                        width: 12,
                        height: 13,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '123 Plant Street, 1/1...',
                          style: Get.context!.textTheme.bodySmall?.copyWith(
                            fontSize: 13,
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      AGap(width: 8),
                      Image.asset(
                        'assets/icons/ic_arrow_circle.png',
                        width: 25,
                        height: 25,
                      ),
                    ],
                  ),
                ),
                AGap(height: 14),

                // Credit/Points/Package Section
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: _buildInfoCard('CREDIT', 'RM100.00'),
                      ),
                      Container(
                        width: 1,
                        height: 55,
                        color: AppColors.gray[200],
                      ),
                      Expanded(
                        child: _buildInfoCard('POINTS', '10'),
                      ),
                      Container(
                        width: 1,
                        height: 55,
                        color: AppColors.gray[200],
                      ),
                      Expanded(
                        child: _buildInfoCard('PACKAGE', '1'),
                      ),
                    ],
                  ),
                ),

                AGap(height: 28),
              ],
            ),
          ),
        ),
        _buildMainImageSection(),
        AGap(height: 16),
        _buildButtons(),
        _buildCategoryIconsRow(),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildInfoCard(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Column(
        children: [
          AText(
            title,
            style: Get.context!.textTheme.bodySmall?.copyWith(
              fontSize: 12,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
          AGap(height: 4),
          AText(
            value,
            style: Get.context!.textTheme.headlineSmall?.copyWith(
              fontSize: 16,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainImageSection() {
    return Image.asset(
      'assets/images/im_home_banner.jpg',
      width: double.infinity,
    );
  }

  Widget _buildButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: _buildNavButton('SHOP', 'assets/icons/ic_button_shop.png'),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: _buildNavButton(
                'SERVICES', 'assets/icons/ic_button_services.png'),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: _buildNavButton('POSTS', 'assets/icons/ic_button_posts.png'),
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(String title, String iconPath) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.buttonColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: Get.context!.textTheme.bodyMedium?.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildCategoryIconsRow() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, top: 22),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCategoryIcon('assets/icons/ic_button_1.png', 'Plants'),
          _buildCategoryIcon('assets/icons/ic_button_2.png', 'Seedlings'),
          _buildCategoryIcon('assets/icons/ic_button_3.png', 'Potted'),
          _buildCategoryIcon('assets/icons/ic_button_4.png', 'Trees'),
          _buildCategoryIcon('assets/icons/ic_button_5.png', 'Care'),
        ],
      ),
    );
  }

  Widget _buildCategoryIcon(String iconPath, String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Image.asset(
        iconPath,
        width: 78,
        height: 78,
      ),
    );
  }
}
