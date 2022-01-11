import 'package:flutter/material.dart';
import 'package:shopping/Widgets/Home/ProductItem.widget.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: [
        ProductItem(
            "Não sei que porra é essa",
            "assets/images/product-1.png",
            "Apple",
            "R\$ 200",
            "Nike Dri-Fiti is a polyester fabric designed to help you keep dry so you can more comfortablye work harder,longer."),
        ProductItem(
            "Smartwatch",
            "assets/images/product-2.png",
            "Apple",
            "R\$ 600",
            "Nike Dri-Fiti is a polyester fabric designed to help you keep dry so you can more comfortablye work harder,longer."),
        ProductItem("Alexa", "assets/images/product-3.png", "Amazon", "R\$ 200",
            "Nike Dri-Fiti is a polyester fabric designed to help you keep dry so you can more comfortablye work harder,longer."),
        ProductItem(
            "Caixa JBL",
            "assets/images/product-4.png",
            "Apple",
            "R\$ 200",
            "Nike Dri-Fiti is a polyester fabric designed to help you keep dry so you can more comfortablye work harder,longer."),
        ProductItem(
            "Redmi 10",
            "assets/images/product-5.png",
            "Xiaomi",
            "R\$ 200",
            "Nike Dri-Fiti is a polyester fabric designed to help you keep dry so you can more comfortablye work harder,longer."),
        ProductItem(
            "Caixa de som Fulera",
            "assets/images/product-6.png",
            "China",
            "R\$ 200",
            "Nike Dri-Fiti is a polyester fabric designed to help you keep dry so you can more comfortablye work harder,longer."),
        ProductItem("AirPod", "assets/images/product-7.png", "Apple", "R\$ 200",
            "Nike Dri-Fiti is a polyester fabric designed to help you keep dry so you can more comfortablye work harder,longer."),
      ],
    );
  }
}
