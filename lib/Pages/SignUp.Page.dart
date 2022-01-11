import 'package:flutter/material.dart';
import 'package:shopping/Widgets/Login/Bnt.SignInSignUp.dart';
import 'package:shopping/Widgets/Login/FormSearch.dart';
import 'package:shopping/Widgets/Login/Form.Name.dart';
import 'package:shopping/Widgets/Login/Form.Password.widget.dart';
import 'package:shopping/Widgets/Login/Form.User.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController ctrl = TextEditingController();
    final formkey = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 350,
                decoration: const BoxDecoration(
                    color: (Color(0xfff5f5f5)),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1, blurRadius: 5, color: Colors.black12)
                    ]),
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20),
                      ),
                      FormName(ctrl),
                      User(""),
                      Password(""),
                      Container(
                          padding: const EdgeInsets.only(top: 30),
                          width: double.infinity,
                          child: SignInSignUP("Sign Up", () {}))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
