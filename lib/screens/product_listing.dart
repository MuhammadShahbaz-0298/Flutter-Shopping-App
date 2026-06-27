import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/Data/global_variables.dart';
import 'package:shopping_app/screens/product_details.dart';
import 'package:shopping_app/widgets/home_appbar.dart';
import 'package:shopping_app/widgets/home_brandfilter.dart';

class ProductListing extends StatelessWidget {
  const ProductListing({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HomeAppbar(),
          HomeBrandfilter(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final Map item = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ProductDetails(product: item),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: index.isOdd
                          ? const Color.fromRGBO(245, 247, 249, 1)
                          : const Color.fromRGBO(216, 240, 253, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["title"],
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "\$ ${item["price"]}",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Center(
                          child: Image.asset(
                            height: 200,
                            width: 200,
                            item["imageUrl"],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
