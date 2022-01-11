import 'package:flutter/material.dart';

import 'Bnt.OAuth.dart';

class OAuth extends StatelessWidget {
  const OAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: const Text(
            "- OR -",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
        BntOAuth("Sign In With Facebook", "assets/images/facebook.png", () {}),
        BntOAuth("Sign In With Google", "assets/images/google.png", () {})
      ],
    );
  }
}
