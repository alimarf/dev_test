import 'package:dev_test_app/core/ui/widgets/atoms/gap/a_gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/ui/colors/colors.dart';
import '../../../../core/ui/widgets/atoms/text/a_text.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 31),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // LOCATION Header
          AText(
            'LOCATION',
            style: Get.context!.textTheme.bodyMedium?.copyWith(
              color: AppColors.primary,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          AGap(height: 8),
          // Map Section
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(8),
              ),
              child: AText(
                "Map will be shown here",
                style: Get.context!.textTheme.bodyMedium?.copyWith(
                  color: AppColors.white,
                ),
              )),
          AGap(height: 22),
          // Location Entries - Simple layout without cards
          _buildSimpleLocationEntry(
            'Sunway Pyramid',
            '10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia',
            '10am - 10pm',
          ),
          AGap(height: 24),
          _buildSimpleLocationEntry(
            'The Gardens Mall',
            '10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia',
            '10am - 10pm',
          ),
          AGap(height: 22),
        ],
      ),
    );
  }

  Widget _buildSimpleLocationEntry(String title, String address, String hours) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        AText(
          title,
          style: Get.context!.textTheme.bodyMedium?.copyWith(
            color: AppColors.textTitleColor,
            fontWeight: FontWeight.bold,
          ),
        ),

        AGap(height: 4),

        // Address with location pin
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/icons/ic_location.png',
              width: 15,
              height: 15,
            ),
            AGap(width: 8),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: 250,
                  child: AText(
                    address,
                    style: Get.context!.textTheme.bodyMedium?.copyWith(
                      color: AppColors.textLinkColor,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.textLinkColor,
                    ),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 4),

        // Hours with clock icon
        Row(
          children: [
            Image.asset(
              'assets/icons/ic_clock.png',
              width: 15,
              height: 15,
            ),
            const SizedBox(width: 8),
            AText(
              hours,
              style: Get.context!.textTheme.bodySmall?.copyWith(
                color: AppColors.textSubTitleColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
