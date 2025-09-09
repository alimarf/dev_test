import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/ui/colors/colors.dart';
import 'package:dev_test_app/app/modules/mall/domain/entities/product.dart';

class MallCard extends StatelessWidget {
  final Product product;

  const MallCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(
                    product.imagePath,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                if (product.hasDiscount)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '${product.discountPercentage}%',
                          style: Get.textTheme.bodyMedium?.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: Get.textTheme.bodyMedium?.copyWith(
                      fontSize: 12,
                      color: AppColors.textSubTitleColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product.description,
                    style: Get.textTheme.bodySmall?.copyWith(
                      fontSize: 16,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  _buildPriceSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceSection() {
    if (product.hasDiscount) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'RM ${product.originalPrice!.toStringAsFixed(2)}',
            style: Get.textTheme.bodySmall?.copyWith(
              color: AppColors.gray[400],
              decoration: TextDecoration.lineThrough,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            'RM ${product.price.toStringAsFixed(2)}',
            style: Get.textTheme.bodyLarge?.copyWith(
              color: AppColors.textPriceColor,
            ),
          ),
        ],
      );
    } else {
      return Text(
        'RM ${product.price.toStringAsFixed(2)}',
        style: Get.textTheme.bodyLarge?.copyWith(
          color: AppColors.textPriceColor,
        ),
      );
    }
  }
}
