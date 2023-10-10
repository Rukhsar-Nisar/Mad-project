import 'package:flutter/material.dart';
import 'package:sample_project/themes/color.dart';

class NoAvailableProducts extends StatelessWidget {
  const NoAvailableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Center(
        child: Text(
          "There are no products available.",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: kOnGreyColor,
              ),
        ),
      ),
    );
  }
}