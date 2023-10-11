import 'package:flutter/material.dart';
import 'package:sample_project/auth/signIn.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Your signup page code here
    // ...
    return const MaterialApp(
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = '';
  String email = '';
  String password = '';
  String dob = '';

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    // Define responsive values based on screen size
    final double fontSize = screenSize.width > 600 ? 18 : 15;
    final double buttonPaddingVertical = screenSize.width > 600 ? 15 : 10;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Signup',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.orange, // Change text color to blue
                ),
              ),
              const SizedBox(height: 24), // Add space
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blue, // Change icon color to blue
                  ),
                ),
                onChanged: (text) {
                  setState(() {
                    email = text;
                  });
                },
              ),
              const SizedBox(height: 24), // Add space
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.orange, // Change icon color to blue
                  ),
                ),
                onChanged: (text) {
                  setState(() {
                    name = text;
                  });
                },
              ),
              const SizedBox(height: 24), // Add space
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.orange, // Change icon color to blue
                  ),
                ),
                obscureText: true, // Hide password text
                onChanged: (text) {
                  setState(() {
                    password = text;
                  });
                },
              ),
              const SizedBox(height: 24), // Add space
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date Of Birth',
                  prefixIcon: Icon(
                    Icons.calendar_month,
                    color: Colors.orange, // Change icon color to blue
                  ),
                ),
                onChanged: (text) {
                  setState(() {
                    dob = text;
                  });
                },
              ),

              const SizedBox(height: 24), // Add space
              ElevatedButton(
                onPressed: () {
                     Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => const SignIn()),
            );       
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Button background color
                  foregroundColor: Colors.white,
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}