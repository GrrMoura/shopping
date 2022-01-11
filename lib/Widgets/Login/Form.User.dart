import 'package:flutter/material.dart';

class User extends StatelessWidget {
  var _user = "";
  User(this._user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.length < 4) {
          return "ta errado fdp";
        } else {
          return null;
        }
      },
      showCursor: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "E-mail ou Usuário",
        labelText: "E-mail",
        labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 16),
      ),
    );
  }
}
