import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thecafe/appPages/coffeTiles.dart';
import 'package:thecafe/appPages/popularCoffe.dart';

import 'package:thecafe/utils/colors.dart';
import 'package:thecafe/utils/dimensions.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.maxFinite,
      color: AppColors.backgroundColor,
      child: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(
              height: 350,
              width: double.maxFinite,
            ),
            padding: EdgeInsets.only(top: 35, left: 20, right: 20),
            decoration: BoxDecoration(
                color: AppColors.mainLighterColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: AppColors.textColor,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: AppColors.textColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: AppColors.textColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Best Coffee in Town",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColors.textColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Coffee",
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Tea",
                      style: TextStyle(
                          color: AppColors.inActiveText,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Drink",
                      style: TextStyle(
                          color: AppColors.inActiveText,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 150,
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 300,
              width: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeTiles(
                    rating: 4.8,
                    coffeName: "Cafe Latte",
                    coffePrice: "\$30",
                    imageLink: "assets/coffee1.png",
                  ),
                  CoffeTiles(
                    rating: 4.3,
                    coffeName: "Cafe Americano",
                    coffePrice: "\$20",
                    imageLink: "assets/coffee2.png",
                  ),
                  CoffeTiles(
                    rating: 4.8,
                    coffeName: "Cafe Espresso",
                    coffePrice: "\$20",
                    imageLink: "assets/coffee3.png",
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 480,
            left: 20,
            child: Text(
              "Most Popular",
              style: TextStyle(
                  color: AppColors.darkBrown,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 500,
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 300,
              width: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  PopularCoffee(
                    rating: 5.0,
                    coffeName: "Cafe Mocha",
                    coffePrice: "\$30",
                    imageLink: "assets/coffee5.png",
                  ),
                  PopularCoffee(
                    rating: 4.9,
                    coffeName: "Cafe Macchiato",
                    coffePrice: "\$20",
                    imageLink: "assets/coffee4.png",
                  ),
                  PopularCoffee(
                    rating: 4.8,
                    coffeName: "Cafe Cortado",
                    coffePrice: "\$20",
                    imageLink: "assets/coffee7.png",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
      bottomNavigationBar: BottomAppBar(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.home_outlined,color: AppColors.mainDarkerColor),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.widgets_outlined,color: Colors.grey.shade300,),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.search,color: Colors.grey.shade300,),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.favorite_outline,color: Colors.grey.shade300,),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.location_pin,color: Colors.grey.shade300,),
            )
          ],
        ),
      ),
    );
  }
}
