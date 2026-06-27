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
            onTap: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text(
                    "This Action will remove this product from cart",
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("No", style: TextStyle(color: Colors.blue)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Yes", style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
              );
            },
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
