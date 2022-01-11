import 'package:flutter/material.dart';
import 'package:shopping/Widgets/CartPage/BoxTotal.widget.dart';
import 'package:shopping/Widgets/CartPage/CartList.widget.dart';

class CartPage extends StatefulWidget {
  var total = 0.0;

  CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: CartList(),
          ),
          BoxTotal()
        ],
      ),
    );
  }
}
