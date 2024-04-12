import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // LIST OF SHOES FOR SALE
  List<Shoe> shoeShop = [
    Shoe(
      name: "Nike Air Force 1 High",
      price: "149.20",
      imagePath: "lib/assets/img/aj_4.png",
      description: "Made with exclusive materials for a stylish look and comfort. The Nike Air Force 1 - Boys shoe offers vintage style and excellent cushioning.",
    ),

    Shoe(
      name: "AIR JORDAN 1 RETRO HIGH OG",
      price: "128.93",
      imagePath: "lib/assets/img/aj_2.png",
      description: "Familiar but always fresh, the iconic Air Jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with premium leather, comfortable cushioning and classic design details.",
    ),

    Shoe(
      name: "Jordan Rare Air",
      price: "122.48",
      imagePath: "lib/assets/img/aj_3.png",
      description: "Familiar but always fresh, the iconic Air Jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with premium leather, comfortable cushioning and classic design details.",
    ),

    Shoe(
      name: "Jordan 1 Retro High",
      price: "89.75",
      imagePath: "lib/assets/img/aj_1.png",
      description: "Combining elements of three certified classic AJ1’s, the 2018 Jordan 1 Retro High Bred Toe is like the Coachella lineup of OG 1s.",
    ),
  ];

  // LIST OF ITEMS IN USER'S CART
  List<Shoe> userCart = [];

  // GETTING LIST OF SHOES FOR SALE
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // GETTING WHAT IS IN THE CART
  List<Shoe> getUserCart() {
    return userCart;
  }

  // ADDING ITEMS TO THE CART
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // REMOVING ITEMS FROM THE CART
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
