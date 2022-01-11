import 'package:flutter/material.dart';

import 'CategoryItem.widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: [
        Categoryitem("Devices", "assets/images/Icon_Devices.png"),
        Categoryitem("Gadgets", "assets/images/Icon_Gadgets.png"),
        Categoryitem("Gaming", "assets/images/Icon_Gaming.png"),
        Categoryitem("Mens", "assets/images/Icon_Mens_Shoe.png"),
        Categoryitem("Womens", "assets/images/Icon_Womens_Shoe.png")
      ],
    );
  }
}
