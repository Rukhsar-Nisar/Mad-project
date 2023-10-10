import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sample_project/Products/product_data.dart';
import 'package:sample_project/Products/product_grid.dart';
import 'package:sample_project/appbars/appbar_buttons.dart';
import 'package:sample_project/screen_one/carousel_banner.dart';
import 'package:sample_project/screen_one/cat_data.dart';
import 'package:sample_project/screen_one/category.dart';
import 'package:sample_project/screen_one/header_cat.dart';
import 'package:sample_project/screen_one/searching.dart';
import 'package:sample_project/screen_three/cart_screen.dart';
import 'package:sample_project/themes/color.dart';
import 'banner.dart';
import 'model_category.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Color myColor = HexColor("#3F1D38");

  void updateSelectedCategory(Category category) {
    setState(() {
      CategoryData.setIsSelected(category.categoryId);
    });
  }

  int currentPromo = 0;

  final List<ShowBanner> showBanners = [
    const ShowBanner(
      promoText: "Get Your Special\nSale Up To 50%",
      promoImageUrl: "lib/images/promo1.png",
      reverseLayout: TextDirection.ltr,
      promoBtnText: "Get Now",
      imageWidth: 120,
      backgroundColor: kBlackColor,
      titleColor: Colors.white,
      buttonBackgroundColor: kPrimaryColor,
      buttonColor: Colors.white,
    ),
    const ShowBanner(
      promoText: "Bottoms for Sale!",
      promoImageUrl: "lib/images/item2.png",
      reverseLayout: TextDirection.rtl,
      promoBtnText: "Check It Out",
      imageWidth: 150,
      backgroundColor: kPrimaryColor,
      titleColor: Colors.white,
      buttonBackgroundColor: Colors.white,
      buttonColor: kPrimaryColor,
    ),
    const ShowBanner(
      promoText: "Use CODEDRIP\nfor 25% Off!",
      promoImageUrl: "lib/images/item3.png",
      reverseLayout: TextDirection.ltr,
      promoBtnText: "Copy Code",
      imageWidth: 150,
      backgroundColor: Colors.white,
      titleColor: kBlackColor,
      buttonBackgroundColor: kPrimaryColor,
      buttonColor: Colors.white,
    ),
  ];

  late CarouselController _carouselController;

  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/CartScreen': (context) => const CartScreen(),
      },
      home: Scaffold(
        appBar: CustomAppBar(
          trailing: IconButton(
            icon: Icon(Iconsax.bag_2,color: Colors.orange,),
            onPressed: () {
            print("more");
          Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => const CartScreen()),
            );            },
          ),
          trailingOnPressed: () {
            // Add your custom AppBar's trailing onPressed functionality here
          },
        ),
        // appBar: AppBar(
        //   elevation: 0,
        //   leadingWidth: 60,
        //   toolbarHeight: 76,
        //   // leading: Padding(
        //   //   padding: const EdgeInsets.only(left: 16.0),
        //   //   child: AppBarButton(
        //   //     iconData: Iconsax.menu_14,
        //   //     onPressed: () {},
        //   //   ),
        //   // ),
        //   actions: [
        //     Padding(
        //       padding:
        //           const EdgeInsets.only(right: 16.0, top: 16.0, bottom: 16.0),

        //       // child: AppBarButton(
        //       //   iconData: Iconsax.bag_2,
        //       //   onPressed: () {
        //       //     //print("more");
        //       //     // Navigator.push(
        //       //     //   context,
        //       //     //   MaterialPageRoute(builder: (context) => const CartScreen()),
        //       //     // );
        //       //     Navigator.pushNamed(context, '/CartScreen');
        //       //   },
        //       // ),
        //     ),
        //   ],
        // ),
        body: Column(
          children: [
            Searching(),
            ShowCarousel(
              showBanners: showBanners,
              carouselController: _carouselController,
              onPageChanged: (index) {
                setState(() {
                  currentPromo = index;
                });
              },
            ),
            CarouselIndicator(
                promoBanners: showBanners,
                carouselController: _carouselController,
                currentPromo: currentPromo),
            ShowCategory(
              categories: CategoryData.categories,
              onSelected: (category) => updateSelectedCategory(category),
            ),
            const ProductHeader(),
            ProductGridView(
              products: ProductData.products
                  .where((product) => product.productCategoryId
                      .contains(CategoryData.getSelectedCategory().categoryId))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
