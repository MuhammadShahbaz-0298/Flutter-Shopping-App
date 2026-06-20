import 'package:flutter/material.dart';

class HomeBrandfilter extends StatelessWidget {
  const HomeBrandfilter({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> brands = [
      "All",
      "Bata",
      "Nike",
      "Addidas",
      "Ndure",
      "1Step",
      "Sketchers",
      "Reebok",
      "Puma",
    ];
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsGeometry.all(8.0),
          child: Chip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
              side: BorderSide(color: Color.fromRGBO(245, 247, 249, 1)),
            ),
            backgroundColor: Color.fromRGBO(245, 247, 249, 1),
            padding: EdgeInsets.all(10),
            label: Text(brands[index]),
          ),
        ),
      ),
    );
  }
}
