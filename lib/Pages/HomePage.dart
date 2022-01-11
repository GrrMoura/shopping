import 'package:flutter/material.dart';
import 'package:shopping/Widgets/Home/ProductList.widget.dart';
import 'package:shopping/Widgets/Home/CategoryList.widget.dart';
import 'package:shopping/Widgets/Home/Form.Search.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController ctrl = TextEditingController();

    return Scaffold(
        body: ListView(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(60))),
          margin: const EdgeInsets.all(10),
          child: Row(
            children: [
              const SizedBox(width: 10),
              GestureDetector(onTap: () {}, child: const Icon(Icons.search)),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  controller: ctrl,
                  showCursor: false,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Search...",
                    labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   children: [
              //     const Icon(Icons.ac_unit),
              //     const SizedBox(width: 30),
              //     Text("data")
              //   ],
              // ),
              const Text("Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 75, child: CategoryList()),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Best Selling",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 350, child: ProductList())
            ],
          ),
        ),
      ],
    ));
  }
}
