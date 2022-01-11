import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  var _password = "";

  Password(this._password, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (input) => _password = input!,
      validator: (value) {
        if (value!.isEmpty) {
          return "Senha precisa ser mais que 8";
        } else {
          return null;
        }
      },
      showCursor: false,
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Password",
          labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w400)),
    );
  }
}
