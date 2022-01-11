import 'package:flutter/material.dart';

class BoxTotal extends StatelessWidget {
  var total = 33.0;

  BoxTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, left: 20, top: 10),
      height: 100,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Total",
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "R\$ $total",
                style: TextStyle(
                    color: Colors.green[800],
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              ),
              Container(width: 140),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.green[800],
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  height: 40,
                  width: 150,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Checkout",
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
