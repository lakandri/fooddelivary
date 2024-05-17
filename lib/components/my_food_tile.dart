import 'package:delivery/models/food.dart';
import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food details
                    Text(
                      food.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("\$" + food.price.toString(),
                        style: TextStyle(color: Colors.green)),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(food.description),
                  ],
                ),
              )),
              // food image

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image.asset(
                    food.imagePath,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.inversePrimary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
