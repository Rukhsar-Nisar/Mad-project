import 'package:flutter/material.dart';
import 'package:sample_project/Products/cards.dart';
import 'package:sample_project/Products/product.dart';
import 'package:sample_project/themes/color.dart';


class ProductGridView extends StatelessWidget {
  //final List<Product> productData;
  //final ScrollController controller;
  final List<Product> products;

  const ProductGridView({
    super.key,
    required this.products,
    //required this.productData,
    //required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return Expanded(
        flex: 4,
          child: Center(
        child: Text(
          "There is no products available",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: kOnGreyColor,
              ),
        ),
      ));
    }

    return Expanded(
      flex: 4,
      child: GridView.builder(
        //controller: widget.controller,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 5,
          childAspectRatio: 2 / 3.25,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //itemCount: widget.productData.length,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
          //return ProductCard();
          // return ProductItem(
          // product: widget.productData[index]);
        },
      ),
    );
  }
}
