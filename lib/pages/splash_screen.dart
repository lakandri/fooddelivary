import 'dart:async';

// import 'package:delivery/auth/Login_or_Signup.dart';
import 'package:delivery/pages/onboard_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const onBoardScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Column(
              children: [
                Image.asset('assets/b3.png'),
                Text(
                  'Welcome to delivery App',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                )
              ],
            ),
          )),
    );
  }
}
