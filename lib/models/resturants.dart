import 'package:collection/collection.dart';
import 'package:delivery/models/cart_item.dart';
import 'package:delivery/models/food.dart';
import 'package:flutter/material.dart';

class Resturants extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
        name: 'Classic Burgur',
        description: ' A jusicy cheese burgur',
        imagePath: 'lib/images/burgers/burgur1.jpg',
        price: 90,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: .99),
          Addon(name: 'Extra Bacon', price: 1.99),
          Addon(name: 'Extra Avocado', price: 2.99),
        ]),

    Food(
        name: 'Classic Burgur',
        description: ' A jusicy cheese burgur',
        imagePath: 'lib/images/burgers/burgur2.jpg',
        price: 90,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: .99),
          Addon(name: 'Extra Bacon', price: 1.99),
          Addon(name: 'Extra Avocado', price: 2.99),
        ]),
    Food(
        name: 'Classic Burgur',
        description: ' A jusicy cheese burgur',
        imagePath: 'lib/images/burgers/burgur3.jpg',
        price: 90,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: .99),
          Addon(name: 'Extra Bacon', price: 1.99),
          Addon(name: 'Extra Avocado', price: 2.99),
        ]),

//
//
//
// for salad
    Food(
        name: 'Fresh  salads',
        description:
            ' raw greens  often combined with other vegetables and toppings and served especially with dressing',
        imagePath: 'lib/images/salads/salad1.jpg',
        price: 90,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra ', price: .99),
          Addon(name: 'Extra ', price: 1.99),
          Addon(name: 'Extra Avocado', price: 2.99),
        ]),
    Food(
        name: 'Classic salads',
        description:
            ' raw greens (such as lettuce) often combined with other vegetables and toppings and served especially with dressing',
        imagePath: 'lib/images/salads/salad2.jpg',
        price: 90,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra ', price: .99),
          Addon(name: 'Extra cucumber', price: 1.99),
          Addon(name: 'Extra Avocado', price: 2.99),
        ]),

    Food(
        name: 'Green salads',
        description:
            '  raw greens (such as lettuce) often combined with other vegetables and toppings and served especially with dressingr',
        imagePath: 'lib/images/salads/salad3.jpg',
        price: 90,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra apple', price: .99),
          Addon(name: 'Extra sdv', price: 1.99),
          Addon(name: 'Extra Avocado', price: 2.99),
        ]),

// forsides
    Food(
        name: 'krfbvjkb',
        description: '  a liquid intended for human consumption. ',
        imagePath: 'lib/images/sides/side1.jpg',
        price: 90,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra Ml', price: .99),
          Addon(name: 'Extra bottke', price: 1.99),
          Addon(name: 'soft', price: 2.99),
        ]),

    Food(
        name: 'krfbvjkb',
        description: '  a liquid intended for human consumption. ',
        imagePath: 'lib/images/sides/side2.jpg',
        price: 90,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra Ml', price: .99),
          Addon(name: 'Extra bottke', price: 1.99),
          Addon(name: 'soft', price: 2.99),
        ]),

    Food(
        name: 'krfbvjkb',
        description: '  a liquid intended for human consumption. ',
        imagePath: 'lib/images/sides/side3.jpg',
        price: 90,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra Ml', price: .99),
          Addon(name: 'Extra bottke', price: 1.99),
          Addon(name: 'soft', price: 2.99),
        ]),

// for desserts
    Food(
        name: 'IceCream',
        description:
            '  a usually sweet course or dish (as of pastry or ice cream) usually served at the end of a meal  ',
        imagePath: 'lib/images/deserts/dessert1.jpg',
        price: 90,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Extra Ml', price: .99),
          Addon(name: 'Extra bottke', price: 1.99),
          Addon(name: 'soft', price: 2.99),
        ]),

    Food(
        name: 'Cream',
        description:
            '  a usually sweet course or dish (as of pastry or ice cream) usually served at the end of a meal  ',
        imagePath: 'lib/images/deserts/dessert2.jpg',
        price: 90,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Extra Ml', price: .99),
          Addon(name: 'Extra bottke', price: 1.99),
          Addon(name: 'soft', price: 2.99),
        ]),

    Food(
        name: 'dhai',
        description:
            '  a usually sweet course or dish (as of pastry or ice cream) usually served at the end of a meal  ',
        imagePath: 'lib/images/deserts/dessert3.jpg',
        price: 90,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Extra Ml', price: .99),
          Addon(name: 'Extra bottke', price: 1.99),
          Addon(name: 'soft', price: 2.99),
        ]),
// for drinks

    Food(
        name: 'Jiuce',
        description:
            '  a liquid intended for human consumption. In addition to their basic function of satisfying thirst',
        imagePath: 'lib/images/drinks/drink1.jpg',
        price: 90,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Extra Ml', price: .99),
          Addon(name: 'Extra bottke', price: 1.99),
          Addon(name: 'soft', price: 2.99),
        ]),

    Food(
        name: 'Frooti',
        description:
            '  a liquid intended for human consumption. In addition to their basic function of satisfying thirst',
        imagePath: 'lib/images/drinks/drink2.jpg',
        price: 90,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Extra Ml', price: .99),
          Addon(name: 'Extra bottke', price: 1.99),
          Addon(name: 'soft', price: 2.99),
        ]),

    Food(
        name: 'Coke',
        description:
            '  a liquid intended for human consumption. In addition to their basic function of satisfying thirst',
        imagePath: 'lib/images/drinks/drink3.jpg',
        price: 90,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Extra Ml', price: .99),
          Addon(name: 'Extra bottke', price: 1.99),
          Addon(name: 'soft', price: 2.99),
        ]),
  ];
// getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  // operationa

  final List<CartItem> _cart = [];
  // add card
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food item is the same
      bool isSameFood = item.food == food;

      // check if list of selection addons are same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
//  if item is already exist, increase its quality
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }
  // remove card

  void removeFromCard(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.remove(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // total number of cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear card[]
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // generaye a receipt
}
