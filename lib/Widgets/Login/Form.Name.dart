import 'package:flutter/material.dart';

class FormName extends StatelessWidget {
  TextEditingController ctrl = TextEditingController(text: "");
  FormName(this.ctrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.length < 4) {
          return "nome precisa ser maior que 4";
        } else {
          return null;
        }
      },
      controller: ctrl,
      showCursor: false,
      decoration: InputDecoration(
          labelText: "Name",
          labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w400)),
    );
  }
}
