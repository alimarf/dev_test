import 'package:dev_test_app/app/modules/home/widgets/card/service_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/ui/colors/colors.dart';
import '../../../../core/ui/widgets/atoms/gap/a_gap.dart';
import '../../../../core/ui/widgets/atoms/text/a_text.dart';

class ServiceSection extends StatefulWidget {
  const ServiceSection({super.key});

  @override
  State<ServiceSection> createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  final ScrollController _scrollController = ScrollController();
  double _scrollProgress = 0.0;

  // List of plant icons for easier management
  final List<String> plantIcons = [
    'assets/icons/ic_shop_plants_1.png',
    'assets/icons/ic_shop_plants_2.png',
    'assets/icons/ic_shop_plants_3.png',
    'assets/icons/ic_shop_plants_4.png',
    'assets/icons/ic_shop_plants_5.png',
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateScrollProgress);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateScrollProgress);
    _scrollController.dispose();
    super.dispose();
  }

  void _updateScrollProgress() {
    if (_scrollController.hasClients) {
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      if (maxScrollExtent > 0) {
        setState(() {
          _scrollProgress =
              (_scrollController.offset / maxScrollExtent).clamp(0.0, 1.0);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.serviceSectionColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AText(
                      'NEW SERVICES',
                      style: Get.context!.textTheme.bodyMedium?.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    AText(
                      'View All',
                      style: Get.context!.textTheme.bodySmall?.copyWith(
                        color: AppColors.textSubTitleColor,
                      ),
                    ),
                  ],
                ),
                AGap(height: 0.5),
                AText(
                  'Recommended based on your preference',
                  style: Get.context!.textTheme.bodySmall?.copyWith(
                    color: AppColors.textSubTitleColor,
                  ),
                ),
                AGap(height: 14),
              ],
            ),
          ),

          // Horizontal scrollable service cards
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ServiceCard(
                  title: 'Lorem ipsum dolor sit amet consectetur',
                  subtitle: 'Lorem Ipsum',
                  price: 'RM 10.00',
                  imagePath: 'assets/images/im_plant.jpg',
                );
              },
            ),
          ),

          AGap(height: 24),

          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/ic_main_shop_plants.png',
                      width: 100,
                      height: 100,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(plantIcons.length, (index) {
                            return Row(
                              children: [
                                Image.asset(
                                  plantIcons[index],
                                  width: 60,
                                  height: 60,
                                ),
                                if (index < plantIcons.length - 1)
                                  AGap(width: 14),
                              ],
                            );
                          }),
                        ),
                      ),
                    )
                  ],
                ),

                AGap(height: 16),

                // Scroll Indicator
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: _buildScrollIndicator(),
                ),
              ],
            ),
          ),

          AGap(height: 24),
        ],
      ),
    );
  }

  Widget _buildScrollIndicator() {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate the width of the active indicator - make it shorter
        final indicatorWidth = constraints.maxWidth * 0.2; // 20% of total width
        final maxOffset = constraints.maxWidth - indicatorWidth;
        final currentOffset = maxOffset * _scrollProgress;

        return Stack(
          children: [
            // Background track
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.textSubTitleColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(1),
              ),
            ),
            // Active indicator
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              left: currentOffset,
              child: Container(
                width: indicatorWidth,
                height: 2,
                decoration: BoxDecoration(
                  color: AppColors.primary[500],
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
