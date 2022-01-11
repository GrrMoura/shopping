import 'package:flutter/material.dart';
import 'package:shopping/Pages/Cart.Page.dart';
import 'package:shopping/Pages/HomePage.dart';
import 'package:shopping/Pages/Login.Page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          const HomePage(),
          CartPage(),
          Login(),
        ],
      ),
      bottomNavigationBar: const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.shopping_cart)),
          Tab(icon: Icon(Icons.perm_identity))
        ],
        indicatorColor: Colors.black,
        labelColor: Colors.black87,
        indicatorPadding: EdgeInsets.all(8),
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: Colors.black54,
      ),
    );
  }
}
