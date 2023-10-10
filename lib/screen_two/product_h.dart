import 'package:flutter/material.dart';
import 'package:sample_project/Products/cards.dart';
import 'package:sample_project/Products/product.dart';


class HeroProductImage extends StatefulWidget {
  const HeroProductImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<HeroProductImage> createState() => _HeroProductImageState();
}

class _HeroProductImageState extends State<HeroProductImage> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "productCard${widget.product.productId}",
      child: ProductImageWithFavButton(
        onPressed: () {
          setState(() {
            widget.product.isFavourite = !widget.product.isFavourite;
          });
        }, 
        productId: widget.product.productId, 
        isFav: widget.product.isFavourite,
      ),
    );
  }
}