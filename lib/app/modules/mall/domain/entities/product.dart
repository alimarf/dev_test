class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final double? originalPrice;
  final int? discountPercentage;
  final String imagePath;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    this.originalPrice,
    this.discountPercentage,
    required this.imagePath,
  });

  bool get hasDiscount => discountPercentage != null && discountPercentage! > 0;
}
