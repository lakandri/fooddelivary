import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTab;
  final String buttonName;
  const MyButton({
    super.key,
    required this.onTab,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        height: MediaQuery.of(context).size.height * .05,
        width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            border: Border.all(color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(9)),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              color: const Color.fromARGB(255, 34, 1, 1),
            ),
          ),
        ),
      ),
    );
  }
}
