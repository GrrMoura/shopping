import 'package:flutter/material.dart';
import 'package:shopping/Pages/ProductDetail.page.dart';
import 'package:shopping/Pages/SignUp.Page.dart';
import 'package:shopping/Widgets/Login/Bnt.SignInSignUp.dart';

class ProductItem extends StatelessWidget {
  var title = "";
  var business = "";
  var image = "";
  var price = "";
  var note = "";

  ProductItem(this.title, this.image, this.business, this.price, this.note,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(5),
          width: 150,
          height: 300,
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetail(title, business, note, image),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 2,
                        color: Colors.white.withOpacity(0.6))
                  ]),
                  child: Image.asset(
                    image,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  height: 45,
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                height: 20,
              ),
              Text(
                business,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                price,
                style: TextStyle(
                    color: Colors.green[700], fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
