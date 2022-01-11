import 'package:flutter/material.dart';
import 'package:shopping/Pages/SignUp.Page.dart';

class Categoryitem extends StatelessWidget {
  var title = "";
  var image = "";

  Categoryitem(this.title, this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()));
            },
            child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12, spreadRadius: 2, blurRadius: 5)
                    ]),
                child: Image.asset(image)),
          ),
        ],
      ),
    );
  }
}
