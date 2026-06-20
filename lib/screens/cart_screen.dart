import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart Page"), centerTitle: true),
      body: Column(
        children: [
          ListTile(
            title: Text("Nike Air Force 1"),
            subtitle: Text("9"),
            leading: CircleAvatar(
              backgroundImage: AssetImage("./assets/images/shoes_2.png"),
            ),
            trailing: Icon(Icons.delete, color: Colors.red),
          ),
           ListTile(
            title: Text("Nike Air Force 1"),
            subtitle: Text("9"),
            leading: CircleAvatar(
              backgroundImage: AssetImage("./assets/images/shoes_2.png"),
            ),
            trailing: Icon(Icons.delete, color: Colors.red),
          ),
           ListTile(
            title: Text("Nike Air Force 1"),
            subtitle: Text("9"),
            leading: CircleAvatar(
              backgroundImage: AssetImage("./assets/images/shoes_2.png"),
            ),
            trailing: Icon(Icons.delete, color: Colors.red),
          ),
           ListTile(
            title: Text("Nike Air Force 1"),
            subtitle: Text("9"),
            leading: CircleAvatar(
              backgroundImage: AssetImage("./assets/images/shoes_2.png"),
            ),
            trailing: Icon(Icons.delete, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
