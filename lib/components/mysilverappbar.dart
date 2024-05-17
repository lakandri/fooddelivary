import 'package:delivery/pages/cart_page.dart';
import 'package:flutter/material.dart';

class MySilverAppbar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySilverAppbar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      collapsedHeight: 100,
      pinned: true,
      actions: [
        IconButton(
            onPressed: () {
              //  navigated to card page

              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartPage()));
            },
            icon: Icon(Icons.shopping_basket))
      ],
      title: Text("Sunset Dinner"),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: child,
        title: title,
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
