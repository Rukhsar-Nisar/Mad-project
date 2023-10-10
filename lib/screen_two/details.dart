import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
//import 'package:readmore/readmore.dart';
import 'package:sample_project/Products/product.dart';
import 'package:sample_project/appbars/appbar_buttons.dart';
import 'package:sample_project/screen_three/cart_screen.dart';
import 'package:sample_project/screen_two/product_h.dart';
import 'package:sample_project/screen_two/rating.dart';
import 'package:sample_project/screen_two/seller.dart';
import 'package:sample_project/themes/color.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.product});

  final Product product;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orange),
          onPressed: () {
            print("more");
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroProductImage(product: widget.product),
            const SizedBox(height: 20.0),
            const SellerRow(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                widget.product.productName,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            RatingRow(
              productRating: widget.product.productRating,
              totalReview: widget.product.totalReview,
            ),
            const SizedBox(height: 20.0),
            // Text(
            //   "Description",
            //   textAlign: TextAlign.left,
            //   style: Theme.of(context).textTheme.titleSmall,
            // ),
            // ReadMoreText(
            //   "Elevate your style with our Urban Edge Hoodie, a perfect blend of comfort and fashion. Crafted from premium cotton, this hoodie features a modern fit, ribbed cuffs, and an adjustable drawstring hood. The sleek design includes a front kangaroo pocket for added convenience and a touch of streetwear flair. Whether you're lounging at home or hitting the streets, our Urban Edge Hoodie is the ultimate statement piece for your casual wardrobe. Stay warm, stay chic, and embrace the urban vibe with this must-have hoodie. ",
            //   trimLines: 4,
            //   colorClickableText: kPrimaryColor,
            //   trimMode: TrimMode.Line,
            //   trimCollapsedText: "Read More",
            //   trimExpandedText: "Read Less",
            //   style: Theme.of(context).textTheme.bodyMedium,
            // ),
            // const SizedBox(height: 30.0),
            // Text(
            //   "Size",
            //   textAlign: TextAlign.left,
            //   style: Theme.of(context).textTheme.titleSmall,
            // ),
          ],
        ),
      ),
    );
  }
}
