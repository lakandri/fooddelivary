import 'package:delivery/components/mybutton.dart';
import 'package:delivery/pages/textform.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  final void Function()? onTab;

  SignupPage({
    super.key,
    required this.onTab,
    // required this.emailController,
    // required this.passwordController,
  });

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController conformController = TextEditingController();

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
              child: const Image(
                image: AssetImage(
                  'assets/signup.png',
                ),
              ),
            ),
            Text(
              'Lets SignUp',
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
            MyTextForm(
                controller: conformController,
                hintText: 'conform password',
                obscureText: true),
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
            MyButton(onTab: widget.onTab, buttonName: 'SignIn'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: widget.onTab,
                    child: Text(' Already Have a account ?',
                        style: TextStyle(fontSize: 16))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
