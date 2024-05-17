import 'package:delivery/auth/Login_or_Signup.dart';
import 'package:delivery/components/onBoard.dart';
import 'package:flutter/material.dart';

class onBoardScreen extends StatefulWidget {
  const onBoardScreen({super.key});

  @override
  State<onBoardScreen> createState() => _onBoardScreenState();
}

//
class _onBoardScreenState extends State<onBoardScreen> {
  int _currentStep = 1;
  void _nextStep() {
    setState(() {
      if (_currentStep < 3) {
        -_currentStep++;
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginORSignup()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          if (_currentStep == 1)
            onBoard(
              next: _nextStep,
              imgPath: 'assets/b1.png',
              boardText: 'Lets Begin',
            ),
          if (_currentStep == 2)
            onBoard(
                boardText: 'Are you hungry? ',
                next: _nextStep,
                imgPath: 'assets/b2.png'),
          if (_currentStep == 3)
            onBoard(
                boardText: 'Lets oder',
                next: _nextStep,
                imgPath: 'assets/b3.png'),
        ],
      ),
    );
  }
}
