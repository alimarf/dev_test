
import 'package:dev_test_app/core/ui/colors/colors.dart';
import 'package:dev_test_app/core/ui/widgets/atoms/text/a_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/ui/widgets/atoms/gap/a_gap.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String imagePath;

  const ServiceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 11),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image section
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
            child: Container(
              height: 180,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.backgroundColor,
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: AppColors.backgroundColor,
                    child: Icon(
                      Icons.image,
                      color: AppColors.textSubTitleColor,
                      size: 8.w,
                    ),
                  );
                },
              ),
            ),
          ),

          // Content section
          Padding(
            padding: const EdgeInsets.only(left: 7, top: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AText(
                  subtitle,
                  style: Get.context!.textTheme.bodySmall?.copyWith(
                    color: AppColors.textSubTitleColor,
                  ),
                ),
                AGap(height: 2),
                AText(
                  title,
                  style: Get.context!.textTheme.bodyMedium?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                  overflow: TextOverflow.visible,
                ),
                AGap(height: 4),
                AText(
                  price,
                  style: Get.context!.textTheme.bodyMedium?.copyWith(
                    fontSize: 15,
                    color: AppColors.textPriceColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}