class Product {
  final int productId;
  final String productName;
  final double productRating;
  final int totalReview;
  final double productPrice;
  bool isFavourite;
  final List<int> productCategoryId;

  Product({
    required this.productId,
    required this.productName,
    required this.productRating,
    required this.totalReview,
    required this.productPrice,
    required this.isFavourite,
    required this.productCategoryId,
  });
}