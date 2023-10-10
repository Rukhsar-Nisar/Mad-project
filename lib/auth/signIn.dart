
import 'package:flutter/material.dart';
import 'package:sample_project/screen_one/home.dart';

class SignIn extends StatefulWidget {
  final String title;

  const SignIn({Key? key, required this.title}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = '';
  String password = '';
  bool rememberMe = false; // Added a bool for remember me

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final textSize = screenSize.width < 600 ? 18.0 : 15.0;
    final buttonPadding = EdgeInsets.symmetric(
      vertical: 12,
      horizontal: screenSize.width < 600 ? 16 : 20,
    );

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: textSize + 15,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                ),
                onChanged: (text) {
                  setState(() {
                    email = text;
                  });
                },
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                ),
                obscureText: true,
                onChanged: (text) {
                  setState(() {
                    password = text;
                  });
                },
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value ?? false;
                      });
                    },
                  ),
                  const Text('Remember me'),
                ],
              ),
              ElevatedButton(
                onPressed: () {
   Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => const Home()),
            );                       },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: buttonPadding,
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Place the "Don't Have an Account? Sign up" row here
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an Account?",
                    // style: TextStyle(fontSize: textSize + 5),
                  ),
                  SizedBox(width: 5), // Add some space between the two texts
                  Text(
                    "Sign up",
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


              // const SizedBox(height: 20), // Add space
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   mainAxisSize: MainAxisSize.min, // Adjusts the button size
              //   children: [
              //     const Expanded(
              //       child: Divider(
              //         color: Color.fromARGB(255, 159, 170, 180),
              //         height: 5,
              //       ),
              //     ),
              //     Padding(
              //       padding: EdgeInsets.symmetric(horizontal: 16.0),
              //       child: Text(
              //         'Login with',
              //         style: TextStyle(
              //           fontSize: screenSize.width < 600 ? 14 : 18,
              //           color: Color.fromARGB(
              //               255, 159, 170, 180), // Change text color to blue
              //         ),
              //       ),
              //     ),
              //     const Expanded(
              //       child: Divider(
              //         color: Color.fromARGB(255, 159, 170, 180),
              //         height: 5,
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 20), // Add space
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   mainAxisSize: MainAxisSize.min, // Adjusts the button size
              //   children: [
              //     ElevatedButton.icon(
              //       onPressed: () {
              //         // Implement Facebook sign-in logic here
              //       },
              //       icon: Icon(
              //         Icons.facebook,
              //         size: screenSize.width < 600 ? 16 : 20,
              //       ),
              //       label: Text('Facebook'), // Add label for Facebook
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.blue[800], // Facebook blue color
              //       ),
              //     ),
              //     const SizedBox(width: 16), // Add space between buttons
              //     ElevatedButton.icon(
              //       onPressed: () {
              //         // Implement Google sign-in logic here
              //       },
              //       icon: Icon(
              //         Icons.email_rounded,
              //         size: screenSize.width < 600 ? 16 : 20,
              //       ),
              //       label: Text('Google'), // Add label for Google
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.red, // Google red color
              //       ),
              //     ),
            