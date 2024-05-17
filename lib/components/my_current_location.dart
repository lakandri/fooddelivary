import 'package:delivery/components/mybutton.dart';
import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchbox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Your location'),
        content: TextField(
          decoration: const InputDecoration(hintText: 'Search Loaction'),
        ),
        actions: [
          MyButton(onTab: () => Navigator.pop(context), buttonName: 'Save'),
          MyButton(onTab: () => Navigator.pop(context), buttonName: 'Cancle')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver Now',
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w500),
          ),
          GestureDetector(
            onTap: () => openLocationSearchbox(context),
            child: Row(
              children: [
                Text(
                  '001 Damak',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w800),
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
