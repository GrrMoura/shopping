import 'package:flutter/material.dart';
import 'package:shopping/Widgets/Login/FormSearch.dart';

import '../Login/FormSearch.dart';

class FormSearch extends StatelessWidget {
  TextEditingController ctrl = TextEditingController();
  FormSearch(this.ctrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(4, 10, 4, 18),
      child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(128)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 25,
                padding: const EdgeInsets.only(top: 5),
                child: const Icon(
                  Icons.search,
                  size: 25,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(width: 300, child: FormSearch(ctrl))
            ],
          )),
    );
  }
}
