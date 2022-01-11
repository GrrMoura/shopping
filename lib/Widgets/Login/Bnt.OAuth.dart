import 'package:flutter/material.dart';

class BntOAuth extends StatelessWidget {
  var label = "";
  var image = "";
  VoidCallback func;

  BntOAuth(this.label, this.image, this.func, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                    width: 100,
                    height: 24,
                    child: Image.asset(
                      image,
                      width: 24,
                    )),
                Text(label)
              ],
            )));
  }
}
