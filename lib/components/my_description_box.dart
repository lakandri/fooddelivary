import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 34),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
        ),
        padding: const EdgeInsets.all(25.0),
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 45),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [Text('\$90'), Text('Delivery fee')],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [Text('14-16mins'), Text('Delivary time')],
            ),
          ],
        ),
      ),
    );
  }
}
