import 'package:flutter/material.dart';

class MyDrawer_Tile extends StatelessWidget {
  final String tileName;
  final IconData icon;
  final void Function()? onTap;
  MyDrawer_Tile(
      {super.key,
      required this.tileName,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tileName,
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
      leading: Icon(
        icon,
        color: Theme.of(context).colorScheme.primary,
      ),
      onTap: onTap,
    );
  }
}
