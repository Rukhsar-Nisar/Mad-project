import 'package:flutter/material.dart';

class ShowBanner extends StatelessWidget {
  final String promoText;
  final String promoImageUrl;
  final TextDirection reverseLayout;
  final String promoBtnText;
  final double imageWidth;
  final Color titleColor;
  final Color backgroundColor;
  final Color buttonBackgroundColor;
  final Color buttonColor;

  const ShowBanner({
    super.key,
    required this.promoText,
    required this.promoImageUrl,
    required this.reverseLayout,
    required this.promoBtnText,
    required this.imageWidth,
    required this.titleColor,
    required this.backgroundColor,
    required this.buttonBackgroundColor,
    required this.buttonColor,
  }); 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
      child: Card(
        elevation: 0,
        color: backgroundColor,
        shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(24.0))),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              //textDirection: reverseLayout,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        promoText,
                        //"50%  Sale Now",
                        //textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: titleColor,
                              //color: Colors.white,
                            ),
                      ),
                      const SizedBox(height: 8.0),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: buttonBackgroundColor,
                          //backgroundColor: kPrimaryColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                        ),
                        child: Text(
                          promoBtnText,
                          //"Get Now",
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: buttonColor,
                                //color: Colors.white,
                                //fontWeight: FontWeight.bold,
                              ),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  //"lib/images/promo1.png",
                  promoImageUrl,
                  width: imageWidth,
                  //width: 120,
                  alignment: Alignment.bottomRight,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
    
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class ShowBanner extends StatelessWidget {
//   final String promoText;
//   final String promoImageUrl;
//   final TextDirection reverseLayout;
//   final String promoBtnText;
//   final double imageWidth;
//   final Color titleColor;
//   final Color backgroundColor;
//   final Color buttonBackgroundColor;
//   final Color buttonColor;

//   const ShowBanner({
//     Key? key,
//     required this.promoText,
//     required this.promoImageUrl,
//     required this.reverseLayout,
//     required this.promoBtnText,
//     required this.imageWidth,
//     required this.titleColor,
//     required this.backgroundColor,
//     required this.buttonBackgroundColor,
//     required this.buttonColor,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Padding(
//       padding: EdgeInsets.only(
//         top: 24.0,
//         left: screenWidth > 600 ? 32.0 : 16.0,
//         right: screenWidth > 600 ? 32.0 : 16.0,
//       ),
//       child: Card(
//         elevation: 0,
//         color: backgroundColor,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(24.0),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0),
//           child: Row(
//             textDirection: reverseLayout,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 20.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       promoText,
//                       style: Theme.of(context).textTheme.headline6?.copyWith(
//                             color: titleColor,
//                           ),
//                     ),
//                     const SizedBox(height: 8.0),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: buttonBackgroundColor,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50.0),
//                         ),
//                       ),
//                       child: Text(
//                         promoBtnText,
//                         style: Theme.of(context).textTheme.bodyText2?.copyWith(
//                               color: buttonColor,
//                             ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Image.asset(
//                 promoImageUrl,
//                 width: screenWidth > 600 ? imageWidth * 1.5 : imageWidth,
//                 alignment: Alignment.bottomRight,
//                 fit: BoxFit.cover,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
