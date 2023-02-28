import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DebuggingUI extends StatelessWidget {
  const DebuggingUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/coffee1.png")
          )
        ),
        child: Row(
          children: [
            Text("Hello Worls")
          ],
        ),
      ),
    );
  }
}
