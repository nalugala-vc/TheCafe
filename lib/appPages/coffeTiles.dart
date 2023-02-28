import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thecafe/appPages/starIWidget.dart';
import 'package:thecafe/utils/colors.dart';

class CoffeTiles extends StatelessWidget {
  final String imageLink;
  final String coffeName;
  final String coffePrice;
  final double rating;
  const CoffeTiles({Key? key, required this.coffeName, required this.coffePrice, required this.imageLink, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 280,
          width: 200,
          margin: EdgeInsets.only(right: 10),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 220,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.mainDarkerColor,
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 5,
          child: Container(
            height: 200,
            width: 120,
            decoration: BoxDecoration(
              image:
              DecorationImage(image: AssetImage(imageLink)),
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 10,
          child: StarWidget(
            icon: Icons.star,
            rating: rating,
          ),
        ),
        Positioned(
            top: 220,
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
                      SizedBox(width: 120,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}
// Column(
// children: [
// Row(
// children: [
// StarWidget(icon: Icons.star, rating: 4.8),
// Container(
// height: 200,
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage("assets/coffee1.png")
// )
// ),
// ),
// ],
// ),
// Text("Cafe Latte", style: TextStyle(color: AppColors.textColor, fontSize: 18, fontWeight: FontWeight.bold),),
// Row(
// children: [
// Text("\$30"),
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(50),
// color: Colors.white
// ),
// child: Icon(
// Icons.favorite,
// color: Colors.red,
// ),
// )
// ],
// )
// ],
// )
