import 'package:delivery/components/mydrawertile.dart';
import 'package:delivery/pages/settings.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Icon(
              Icons.lock_open,
              color: Theme.of(context).colorScheme.primary,
              size: 70,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          MyDrawer_Tile(
              tileName: 'Home',
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),
          MyDrawer_Tile(
            tileName: 'Setting',
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
          Spacer(),
          MyDrawer_Tile(tileName: 'LOG OUT', icon: Icons.logout, onTap: () {}),
        ],
      ),
    );
  }
}
