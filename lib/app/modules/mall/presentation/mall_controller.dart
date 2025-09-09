import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import 'package:dev_test_app/app/modules/mall/domain/entities/product.dart';

class MallController extends BaseController {
  final RxList<Product> products = <Product>[].obs;
  final RxString searchQuery = ''.obs;
  final TextEditingController searchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    _initializeProducts();
  }

  void _initializeProducts() {
    products.value = [
      Product(
        id: '1',
        title: 'Lorem Ipsum',
        description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        price: 100.00,
        imagePath: 'assets/images/im_plant.jpg',
      ),
      Product(
        id: '2',
        title: 'Lorem Ipsum',
        description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        price: 50.00,
        originalPrice: 100.00,
        discountPercentage: 50,
        imagePath: 'assets/images/im_plant.jpg',
      ),
      Product(
        id: '3',
        title: 'Lorem Ipsum',
        description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        price: 100.00,
        imagePath: 'assets/images/im_plant.jpg',
      ),
      Product(
        id: '4',
        title: 'Lorem Ipsum',
        description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        price: 50.00,
        originalPrice: 100.00,
        discountPercentage: 50,
        imagePath: 'assets/images/im_plant.jpg',
      ),
      Product(
        id: '5',
        title: 'Lorem Ipsum',
        description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        price: 100.00,
        imagePath: 'assets/images/im_plant.jpg',
      ),
      Product(
        id: '6',
        title: 'Lorem Ipsum',
        description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        price: 50.00,
        originalPrice: 100.00,
        discountPercentage: 50,
        imagePath: 'assets/images/im_plant.jpg',
      ),
    ];
  }

  void onSearchChanged(String value) {
    searchQuery.value = value;
  }

  void onFilterPressed() {
    // TODO: Implement filter functionality
    Get.snackbar('Filter', 'Filter functionality will be implemented');
  }

  void onBackPressed() {
    Get.back();
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}
