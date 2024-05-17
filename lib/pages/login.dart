import 'package:delivery/components/mybutton.dart';
import 'package:delivery/pages/homepage.dart';
import 'package:delivery/pages/textform.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTab;

  const LoginPage({super.key, required this.onTab});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login

  void login() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Image(
                image: AssetImage(
                  'assets/logo.png',
                ),
              ),
            ),
            Text(
              'Junior Delivery App',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextForm(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextForm(
              controller: passwordController,
              hintText: 'password',
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            MyButton(buttonName: 'Login', onTab: login),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?  ', style: TextStyle(fontSize: 16)),
                GestureDetector(
                    onTap: widget.onTab,
                    child:
                        Text(' Register now', style: TextStyle(fontSize: 16))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
