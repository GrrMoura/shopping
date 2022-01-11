import 'package:flutter/material.dart';

class SignUpForgot extends StatelessWidget {
  var label = "";
  VoidCallback func;
  SignUpForgot(this.label, this.func, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: func,
      child: Text(
        label,
        style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 15),
      ),
    );
  }
}
