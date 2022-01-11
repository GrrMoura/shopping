import 'package:flutter/material.dart';
import 'package:shopping/Pages/Tabs.Page.dart';
import 'package:shopping/Widgets/Login/Bnt.SignUpForgot.dart';
import 'package:shopping/Widgets/Login/Bnt.SignInSignUp.dart';
import 'package:shopping/Widgets/Login/Form.Password.widget.dart';
import 'package:shopping/Widgets/Login/Form.User.dart';
import 'package:shopping/Widgets/Login/OAuth.widget.dart';
import 'package:shopping/Widgets/Login/Welcome.widget.dart';

class Login extends StatelessWidget {
  TextEditingController ctrl = TextEditingController();
  var _password = "";
  var _email = "";
  final _formkey = GlobalKey<FormState>();

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 400,
                  decoration: const BoxDecoration(
                      color: (Color(0xfff5f5f5)),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 5,
                            color: Colors.black12)
                      ]),
                  child: ListView(
                    //talvez precise trocar por column
                    children: [
                      const Welcome(),
                      const SizedBox(
                        height: 45,
                      ),
                      Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            User(_email),
                            Password(_password),
                            Container(
                              alignment: Alignment.centerRight,
                              child:
                                  SignUpForgot("Forgot your Passowrd?", () {}),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  if (_formkey.currentState!.validate()) {
                                    _formkey.currentState!.save();

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text("olaaa"),
                                      ),
                                    );
                                  }
                                },
                                child: const Text(
                                  "Sign in",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const OAuth(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
