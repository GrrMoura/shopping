import 'package:flutter/material.dart';

import 'CartItens.widget.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CartItem("BeoPlay", 700, 1, "assets/images/product-1.png"),
        CartItem("Leather Wristwatch", 450, 1, "assets/images/product-2.png"),
        CartItem("Smart Bluetooth", 700, 1, "assets/images/product-3.png"),
        CartItem("Smart Luggage", 700, 1, "assets/images/product-4.png"),
        CartItem("Smartphone Case", 700, 1, "assets/images/product-5.png"),
        CartItem("Speakers Stand", 700, 1, "assets/images/product-6.png"),
        CartItem("Spekaer ", 700, 1, "assets/images/product-7.png"),
        CartItem("BeoPlay", 700, 1, "assets/images/product-8.png"),
        CartItem("imagem 9", 700, 1, "assets/images/product-9.png"),
        CartItem("Dry Fits", 700, 1, "assets/images/product-10.png"),
      ],
    );
  }
}
