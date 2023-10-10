// import 'package:flutter/material.dart';
// import 'package:sample_project/Products/product.dart';
// import 'package:sample_project/themes/color.dart';

// class ProductItem extends StatefulWidget {
//   const ProductItem({
//     super.key,
//     required this.product,
//   });

//   final Product product;

//   @override
//   State<ProductItem> createState() => _ProductItemState();
// }

// class _ProductItemState extends State<ProductItem> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Navigator.push(context, MaterialPageRoute(builder: (context) {
//         // return DetailScreen(product: widget.product);
//         // }));
//       },
//       child: ProductCard(product: widget.product),
//     );
//   }
// }

// class ProductCard extends StatefulWidget {
//   const ProductCard({
//     super.key,
//     required this.product,
//   });

//   final Product product;

//   @override
//   State<ProductCard> createState() => _ProductCardState();
// }

// class _ProductCardState extends State<ProductCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 0,
//       color: Colors.transparent,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Hero(
//             tag: "productCard${widget.product.productId}",
//             child: ProductImageWithFavButton(
//               product: widget.product,
//               onPressed: () {
//                 // setState(() {
//                 //   widget.product.isFavourite = !widget.product.isFavourite;
//                 // });
//               },
//             ),
//           ),
//           ProductReview(
//             productRating: widget.product.productRating,
//             totalReview: widget.product.totalReview,
//           ),
//           ProductName(name: widget.product.productName),
//           ProductPrice(price: widget.product.productPrice)
//         ],
//       ),
//     );
//   }
// }

// class ProductImageWithFavButton extends StatelessWidget {
//   const ProductImageWithFavButton({
//     super.key,
//     required this.product,
//     required this.onPressed,
//   });

//   final Product product;
//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.topRight,
//       children: [
//         ProductImage(productId: product.productId),
//         ProductFavButton(
//           isFav: product.isFavourite,
//           onPressed: () => onPressed(),
//         )
//       ],
//     );
//   }
// }

// class ProductImage extends StatelessWidget {
//   const ProductImage({
//     super.key,
//     required this.productId,
//   });

//   final int productId;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//           color: kGreyColor,
//           borderRadius: BorderRadius.all(Radius.circular(24.0))),
//       child: Padding(
//         padding: const EdgeInsets.only(top: 8.0),
//         child: Image.asset(
//           'lib/images/item${productId + 1}.png',
//           fit: BoxFit.cover,
//           alignment: Alignment.bottomCenter,
//         ),
//       ),
//     );
//   }
// }

// class ProductFavButton extends StatefulWidget {
//   const ProductFavButton({
//     super.key,
//     required this.isFav,
//     required this.onPressed,
//   });

//   final bool isFav;
//   final VoidCallback onPressed;

//   @override
//   State<ProductFavButton> createState() => _ProductFavButtonState();
// }

// class _ProductFavButtonState extends State<ProductFavButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(4.0),
//       child: TextButton(
//         onPressed: () {
//           widget.onPressed();
//         },
//         style: TextButton.styleFrom(
//             shape: const CircleBorder(),
//             backgroundColor: Colors.white,
//             minimumSize: const Size(10, 10)),
//         // child: Icon(
//         //   widget.isFav ? Iconsax.heart : Iconsax.heart5,
//         //   color: Colors.red,
//         //   size: 16,
//         // ),
//         child: Icon(
//           widget.isFav ? Icons.favorite : Icons.favorite_border,
//           color: Colors.red,
//           size: 16,
//         ),
//       ),
//     );
//   }
// }

// class ProductReview extends StatelessWidget {
//   const ProductReview({
//     super.key,
//     required this.productRating,
//     required this.totalReview,
//   });

//   final double productRating;
//   final int totalReview;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         const Icon(
//           Icons.star_rounded,
//           color: Color(0xFFF5B539),
//           size: 28,
//         ),
//         Text(
//           "$productRating (${totalReview}k review)",
//           style: Theme.of(context).textTheme.bodyMedium,
//         )
//       ],
//     );
//   }
// }

// class ProductName extends StatelessWidget {
//   const ProductName({
//     super.key,
//     required this.name,
//   });

//   final String name;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       name,
//       overflow: TextOverflow.ellipsis,
//       style: Theme.of(context).textTheme.titleMedium,
//     );
//   }
// }

// class ProductPrice extends StatelessWidget {
//   const ProductPrice({
//     super.key,
//     required this.price,
//   });

//   final double price;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "\$ $price",
//       style: Theme.of(context).textTheme.titleSmall,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sample_project/Products/product.dart';
import 'package:sample_project/screen_two/details.dart';
import 'package:sample_project/themes/color.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(product: product);
        }));
      },
      child: ProductCardItem(product: product),
    );
  }
}

class ProductCardItem extends StatefulWidget {
  const ProductCardItem({super.key, required this.product});

  final Product product;

  @override
  State<ProductCardItem> createState() => _ProductCardItemState();
}

class _ProductCardItemState extends State<ProductCardItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: "productCard${widget.product.productId}",
              child: ProductImageWithFavButton(
                productId: widget.product.productId,
                isFav: widget.product.isFavourite,
                onPressed: () {
                  setState(() {
                    widget.product.isFavourite = !widget.product.isFavourite;
                  });
                },
              ),
            ),
            ProductReview(
              productRating: widget.product.productRating,
              totalReview: widget.product.totalReview,
            ),
            ProductName(
              productName: widget.product.productName,
            ),
            ProductPrice(
              productPrice: widget.product.productPrice,
            ),
          ]),
    );
  }
}

class ProductImageWithFavButton extends StatelessWidget {
  const ProductImageWithFavButton(
      {super.key,
      required this.productId,
      required this.isFav,
      required this.onPressed});
  final int productId;
  final bool isFav;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        ProductImage(productId: productId),
        ProductFavButton(isFav: isFav, onPressed: () => onPressed()),
      ],
    );
  }
}

class ProductFavButton extends StatefulWidget {
  const ProductFavButton({
    super.key,
    required this.isFav,
    required this.onPressed,
  });

  final bool isFav;
  final VoidCallback onPressed;

  @override
  State<ProductFavButton> createState() => _ProductFavButtonState();
}

class _ProductFavButtonState extends State<ProductFavButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          widget.onPressed;
        });
      },
      style: TextButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
        minimumSize: const Size(10, 10),
      ),
      child: Icon(
        widget.isFav ? Iconsax.heart5 : Iconsax.heart,
        color: Colors.red,
        size: 16,
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.productId,
  });

  final int productId;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.all(Radius.circular(24.0))),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Image.asset(
          "lib/images/item${productId + 1}.png",
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
}

class ProductReview extends StatelessWidget {
  const ProductReview(
      {super.key, required this.productRating, required this.totalReview});

  final double productRating;
  final int totalReview;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Color(0xFFf58539),
          size: 20,
        ),
        Text(
          "$productRating (${totalReview}k reviews)",
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}

class ProductName extends StatelessWidget {
  const ProductName({
    super.key,
    required this.productName,
  });

  final String productName;

  @override
  Widget build(BuildContext context) {
    return Text(
      productName,
      style: Theme.of(context).textTheme.titleMedium,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
    required this.productPrice,
  });

  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return Text(
      "\$ $productPrice",
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
