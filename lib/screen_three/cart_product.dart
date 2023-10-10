class CartProduct {
  final String title;
  final double price;
  final List<String> image;

  CartProduct({
    required this.title,
    required this.price,
    required this.image,
  });
}

class CartItem {
  final CartProduct product;
  final int numOfItems;

  CartItem({
    required this.product,
    required this.numOfItems,
  });
}

List<CartProduct> demoProduct = [
  CartProduct(
    title: 'Product 1',
    price: 10.0,
    image: ['lib/images/item1.png'],
  ),
  CartProduct(
    title: 'Product 2',
    price: 15.0,
    image: ['lib/images/item2.png'],
  ),
];

List<CartItem> demoCart = [
  CartItem(product: demoProduct[0], numOfItems: 2),
  CartItem(product: demoProduct[1], numOfItems: 4),
  CartItem(product: demoProduct[0], numOfItems: 1),
];