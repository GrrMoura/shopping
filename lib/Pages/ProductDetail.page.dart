import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  var title = "";
  var business = "";
  var image = "";

  var note = "";

  ProductDetail(this.title, this.business, this.note, this.image, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool inneIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white.withOpacity(0.8),
                expandedHeight: 450,
                floating: false,
                elevation: 0,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset(
                    image,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              )
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                const SizedBox(height: 8),
                Text(
                  business,
                  style: const TextStyle(fontSize: 15, color: Colors.black54),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Details",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 35,
                  child: Text(
                    note,
                    style: const TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
