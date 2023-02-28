import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thecafe/utils/colors.dart';

class CartCards extends StatelessWidget {
  final String coffeeImage;
  final String coffeeName;
  final String coffeePrice;
  const CartCards({Key? key, required this.coffeeImage,required this.coffeeName, required this.coffeePrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5,),
          width: double.maxFinite,
          height: 180,
        ),
        Positioned(
          top: 40,
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.mainDarkerColor,
                borderRadius: BorderRadius.circular(20)),
            height: 120,
            width: 320,
          ),
        ),
        Positioned(
          right: 150,
          top: 0,
          child: Container(
            padding: EdgeInsets.only(right: 20),
            height: 170,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(coffeeImage)),
            ),
          ),
        ),
        Positioned(
            top: 50,
            right: 80,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    coffeePrice,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                        fontSize: 16),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: AppColors.mainLighterColor,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: IconButton(
                              padding: EdgeInsets.only(right: 1,bottom: 1),
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                color: AppColors.textColor,
                                size: 13,
                              ))),
                      SizedBox(width: 10,),
                      Text("3",style: TextStyle(
                        color: AppColors.textColor
                      ),),
                      SizedBox(width: 10,),
                      Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: AppColors.mainLighterColor,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: IconButton(
                              padding: EdgeInsets.only(right: 1,bottom: 1),
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: AppColors.textColor,
                                size: 13,
                              ))),
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}
