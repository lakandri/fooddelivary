import 'package:delivery/pages/login.dart';
import 'package:delivery/pages/signup.dart';
import 'package:flutter/material.dart';

class LoginORSignup extends StatefulWidget {
  const LoginORSignup({super.key});

  @override
  State<LoginORSignup> createState() => _LoginORSignupState();
}

class _LoginORSignupState extends State<LoginORSignup> {
  bool showLoginPage = true;
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTab: togglePages);
    } else {
      return SignupPage(onTab: togglePages);
    }
  }
}
