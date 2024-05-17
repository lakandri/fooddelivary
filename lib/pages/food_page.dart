import 'package:delivery/components/mybutton.dart';
import 'package:delivery/models/food.dart';
import 'package:delivery/models/resturants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class foodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  foodPage({
    super.key,
    required this.food,
  }) {
    // initilize  salected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<foodPage> createState() => _foodPageState();
}

class _foodPageState extends State<foodPage> {
  // method to add cart

  void addToCart(Food food, Map<Addon, bool> seletedAddons) {
    // close the current food page to go back to meue
    Navigator.pop(context);
    List<Addon> currentlySelectedAddons = [];

    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
// add to cart
      context.read<Resturants>().addToCart(food, currentlySelectedAddons);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      // scaffold ui
      children: [
        Scaffold(
          // appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              // image of food

              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 39, left: 20, right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset(
                      widget.food.imagePath,
                    ),
                  ),
                ),
                //  food name
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      // food price
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "\$" + widget.food.price.toString(),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      //  food description

                      Text(
                        widget.food.description,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      // addons
                      Text(
                        'Add ons',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    Theme.of(context).colorScheme.secondary)),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.food.availableAddons.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              // get individual addon

                              Addon addon = widget.food.availableAddons[index];

                              return CheckboxListTile(
                                  title: Text(addon.name),
                                  subtitle: Text(
                                    "\$" + addon.price.toString(),
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  value: widget.selectedAddons[addon],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      widget.selectedAddons[addon] = value!;
                                    });
                                  });
                            }),
                      ),

                      // buttom add cart
                    ],
                  ),
                ),
                MyButton(
                    onTab: () => addToCart(widget.food, widget.selectedAddons),
                    buttonName: 'Add to cart')
              ],
            ),
          ),
        ),

        //  back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 25),
              child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle),
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios))),
            ),
          ),
        ),
      ],
    );
  }
}
