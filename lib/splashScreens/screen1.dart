import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sample_project/themes/color.dart';
import 'screen2.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Color color0 = HexColor("#BF86B3");

  Color color1 = HexColor("#FFE5FA");

  Color color2 = HexColor("#3F1D38");

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const Text(
              "E-commerce",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Helvetica',
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Welcome xyz, Let's Shop!",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(height: 50),
            Image.asset(
              "assets/p2.png",
              width: screenWidth * 1.0,
              height: screenHeight * 0.5,
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                textStyle: TextStyle(fontSize: screenWidth * 0.04),
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.02,
                  horizontal: screenWidth * 0.05,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
              ),
              child: SizedBox(
                width: screenWidth * 0.3,
                child: const Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      //color: buttonColor,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
