import 'package:flutter/material.dart';
import 'package:sample_project/themes/color.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Products",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: kBlackColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "View More",
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          )
        ],
      ),
    );
  }
}