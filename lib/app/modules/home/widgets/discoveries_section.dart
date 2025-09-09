import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../core/ui/colors/colors.dart';
import '../../../../core/ui/widgets/atoms/gap/a_gap.dart';
import '../../../../core/ui/widgets/atoms/text/a_text.dart';

class DiscoveriesSection extends StatelessWidget {
  const DiscoveriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryDark,
      child: Column(
        children: [
          // Header Section
          Image.asset(
            'assets/images/im_trending_discoveries.jpg',
            width: double.infinity,
          ),
          MasonryGridView.count(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 34, top: 20),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            itemCount: 6,
            itemBuilder: (context, index) {
              return _buildPlantCard(context, index);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPlantCard(BuildContext context, int index) {
    // Different text lengths to create staggered effect
    final List<String> descriptions = [
      'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet',
      'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit',
    ];

    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Plant Image
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                color: Color(0xFFF5F5F5),
              ),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(5)),
                child: Image.asset(
                  'assets/images/im_plant.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Text Content
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AText(
                    'Lorem Ipsum',
                    style: Get.context!.textTheme.bodySmall?.copyWith(
                      color: AppColors.textSubTitleColor,
                    ),
                  ),
                  AGap(height: 2),
                  AText(
                    descriptions[index],
                    style: Get.context!.textTheme.bodyMedium?.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
