import 'package:flutter/material.dart';

class SignInSignUP extends StatelessWidget {
  var label = "";
  VoidCallback func;
  SignInSignUP(this.label, this.func, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: Theme.of(context).primaryColor,
      ),
      child: TextButton(
        onPressed: func,
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
