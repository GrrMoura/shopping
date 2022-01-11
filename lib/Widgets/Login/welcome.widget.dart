import 'package:flutter/material.dart';
import 'package:shopping/Pages/SignUp.Page.dart';

import 'Bnt.SignUpForgot.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Text(
                "Welcome,",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "Sign in to Continue",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          SignUpForgot(
            "Sign Up",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
