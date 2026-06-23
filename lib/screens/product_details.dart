import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "Nike Air Force 1",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Spacer(flex: 1),
          Image.asset(height: 250, "./assets/images/shoes_2.png"),
          Spacer(flex: 2),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(216, 240, 253, 1),
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
            padding: EdgeInsets.all(14),
            child: Column(
              children: [
                Text(
                  "\$ 100.88",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 10),

                // Row(
                //   children: [
                //     Chip(label: Text("8")),
                //     Chip(label: Text("8")),
                //     Chip(label: Text("8")),
                //     Chip(label: Text("8"))
                //   ],
                // ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(4),
                        child: Chip(label: Text("8")),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(254, 206, 1, 1),
                    minimumSize: Size(double.infinity, 55),
                  ),
                  label: Text("Add To Cart"),
                  icon: Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
