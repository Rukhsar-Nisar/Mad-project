import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sample_project/themes/color.dart';


class SellerRow extends StatelessWidget {
  const SellerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Iconsax.shop,
          color: kOnGreyColor,
        ),
        const SizedBox(width: 8.0),
        Text(
          "tokobaju.id",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        )
      ],
    );
  }
}