import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thecafe/appPages/cartCards.dart';

import '../utils/colors.dart';

class CartList extends StatelessWidget {
  List<String> coffeeNames=["Cafe Latte","Irish Coffee","Cold Coffee", "Black coffee"];
  List<String> coffeePrice=["\$10","\20","\$30","\$40"];
  List<String> coffeeImages=["assets/coffee1.png","assets/coffee2.png","assets/coffee3.png","assets/coffee4.png"];


  CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.textColor,
                            size: 13,
                          )),
                      decoration: BoxDecoration(
                          color: AppColors.mainDarkerColor,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Cart List",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.darkBrown),
                    )
                  ],
                ),
              ),
              Container(
                height: 650,
                width: 400,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CartCards(coffeeImage: coffeeImages[index],coffeeName: coffeeNames[index],coffeePrice: coffeePrice[index],);
                    }),
              )
            ],
          ),
        ));
  }
}
