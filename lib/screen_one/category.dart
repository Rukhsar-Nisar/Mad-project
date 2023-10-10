import 'package:flutter/material.dart';
import 'package:sample_project/screen_one/model_category.dart';
import 'package:sample_project/themes/color.dart';

class ShowCategory extends StatefulWidget {
  final List<Category> categories;
  final void Function(Category) onSelected;

  const ShowCategory({
    super.key,
    required this.categories,
    required this.onSelected,
  });

  @override
  State<ShowCategory> createState() => ShowCategoryState();
}

class ShowCategoryState extends State<ShowCategory> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        scrollDirection: Axis.horizontal,
        children: widget.categories.map((category) {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: ChoiceChip(
              avatar: null,
              label: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(category.categoryName),
              ),
              selected: category.isSelected,
              onSelected: (isSelected) {
                widget.onSelected(category);
              },
              selectedColor: kPrimaryColor,
              labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: category.isSelected ? Colors.white : kBlackColor,
                  ),
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: category.isSelected ? kPrimaryColor : kBlackColor,
                  width: 1.5,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
