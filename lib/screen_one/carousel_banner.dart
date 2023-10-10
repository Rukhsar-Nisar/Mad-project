import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/screen_one/banner.dart';
import 'package:sample_project/themes/color.dart';

class ShowCarousel extends StatefulWidget {
 const ShowCarousel({
    super.key,
    required CarouselController carouselController,
    required this.showBanners,
    required this.onPageChanged,
  }) : _carouselController = carouselController;

  final List<ShowBanner> showBanners;
  final CarouselController _carouselController;
  final dynamic Function(int) onPageChanged;


  @override
  State<ShowCarousel> createState() => _ShowCarouselState();
}

class _ShowCarouselState extends State<ShowCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        carouselController: widget._carouselController,
      options: CarouselOptions(
        viewportFraction: 1.0,
        aspectRatio: 21 / 9.75,
        autoPlay: true,
        onPageChanged: (index, reason) {
          widget.onPageChanged(index);
        },
      ),
      items: widget.showBanners,
    );
  }
}


class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    super.key,
    required this.promoBanners,
    required CarouselController carouselController,
    required this.currentPromo,
  }) : _carouselController = carouselController;

  final List<ShowBanner> promoBanners;
  final CarouselController _carouselController;
  final int currentPromo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: promoBanners.asMap().entries.map((e) {
        return GestureDetector(
          onTap: () => _carouselController.animateToPage(e.key),
          child: Container(
            width: 5.0,
            height: 5.0,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 4.0,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  kPrimaryColor.withOpacity(currentPromo == e.key ? 0.9 : 0.3),
            ),
          ),
        );
      }).toList(),
    );
  }
}