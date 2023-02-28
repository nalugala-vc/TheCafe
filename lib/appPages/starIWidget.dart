import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thecafe/utils/colors.dart';

class StarWidget extends StatelessWidget {
  final IconData icon;
  final double rating;
  const StarWidget({Key? key,required this.icon,required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: Colors.yellow, size: 15,),
        SizedBox(width: 5,),
        Text(rating.toString(),style: TextStyle( color:AppColors.textColor,fontWeight: FontWeight.bold,fontSize: 13),)
      ],
    );
  }
}
