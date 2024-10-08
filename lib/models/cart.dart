import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
//list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'AirMax97',
        price: '10,500',
        description:
            'Sleek. Stylish. Simple. The Air Max 97s water-inspired design flows whether your are out.',
        imagePath: 'lib/images/nike airmax 97.png'),
    Shoe(
        name: 'ACG Nike Boots',
        price: '12,999',
        description:
            'On the trail, details matter. Fast, rugged and ready for whatever wildness comes your way.',
        imagePath: 'lib/images/acg nike boots.png'),
    Shoe(
        name: 'Nike AirMax',
        price: '9,799',
        description:
            'Lace up and feel the legacy in a champion running shoe that helped define the 90s.',
        imagePath: 'lib/images/nike airmax.png'),
    Shoe(
        name: 'Nike LD Victory',
        price: '14,000',
        description: 'Created for the hardwood but taken to the streets.',
        imagePath: 'lib/images/nike dunk.png'),
  ];

// list of items in user cart
  List<Shoe> userCart = [];

// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
