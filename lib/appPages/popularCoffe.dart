import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thecafe/appPages/starIWidget.dart';
import 'package:thecafe/utils/colors.dart';

class PopularCoffee extends StatelessWidget {
  final String imageLink;
  final String coffeName;
  final String coffePrice;
  final double rating;
  const PopularCoffee({Key? key, required this.coffeName, required this.coffePrice, required this.imageLink, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 200,
          // color: Colors.red,
          margin: EdgeInsets.only(right: 10),
        ),
        Positioned(
          bottom: 100,
          child: Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.mainDarkerColor,
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 50,
          child: Container(
            height: 140,
            width: 200,
            decoration: BoxDecoration(
              image:
              DecorationImage(image: AssetImage(imageLink)),
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: 10,
          child: StarWidget(
            icon: Icons.star,
            rating: rating,
          ),
        ),
        Positioned(
            top: 150,
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeName,
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 7,),
                  Row(
                    children: [
                      Text(coffePrice, style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.textColor),),
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}