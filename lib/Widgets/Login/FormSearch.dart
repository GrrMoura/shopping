import 'package:flutter/material.dart';

class FormSearch extends StatelessWidget {
  TextEditingController ctrl = TextEditingController();
  final formkey = GlobalKey<FormState>();

  FormSearch(this.ctrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: ctrl,
      showCursor: false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Search...",
        labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 16),
      ),
    );
  }
}
