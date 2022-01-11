import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  var title = "";
  var price = 0.0;
  var quant = 1;
  var image = "";
  var plus = "+";

  CartItem(this.title, this.price, this.quant, this.image, {Key? key})
      : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(
                widget.image,
                fit: BoxFit.fitWidth,
              )),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title, style: const TextStyle(fontSize: 18)),
                Text(
                  "R\$ ${widget.price}",
                  style: TextStyle(
                      color: Colors.green[800], fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  height: 30,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            widget.quant += 1;
                          });
                        },
                        child: const Text(
                          "+",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "${widget.quant}",
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            widget.quant -= 1;
                            if (widget.quant <= 0) {
                              widget.quant = 0;
                            }
                          });
                        },
                        child: const Text(
                          "-",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
