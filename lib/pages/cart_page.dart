import 'package:delivery/models/resturants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturants>(builder: (context, resturant, child) {
      final userCart = resturant.cart;

      // scaffold ui

      return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(userCart[index].food.name),
                        )))
          ],
        ),
      );
    });
  }
}
