import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/home_appbar.dart';
import 'package:shopping_app/widgets/home_brandfilter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Column(
        children: [
          HomeAppbar(),
          HomeBrandfilter(),
          Expanded(child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 6,
            itemBuilder:(context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(216, 240, 253, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nike Air Max",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "\$200",
                      style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Center(
                        child: Image.asset(
                          height: 200,
                          width: 200,
                          "./assets/images/shoes_2.png"
                        ),
                      )
                  ],
                ),
              );

            },
             
            )
            )
        ],
      ),
    );
  }
}
