import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sample_project/themes/color.dart';

class Searching extends StatelessWidget {
  Searching({super.key});
  final Color myColor = HexColor("3F1D38");

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth < 600 ? 8.0 : 16.0),
        child: Container(
          decoration: BoxDecoration(
            color: kGreyColor,
            borderRadius: BorderRadius.circular(screenWidth < 600 ? 20.0 : 50.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  Iconsax.search_normal,
                  color: myColor,
                ),
                SizedBox(width: screenWidth < 600 ? 8.0 : 16.0),
                Text(
                  "Search",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth < 600 ? 14 : 18,
                    fontWeight: FontWeight.normal,
                    color: myColor,
                  ),
                ),
              ],
            ),
          ),
        ),
          );
  }
}
