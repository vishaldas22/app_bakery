import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget {
  final String imgSrc;
  final Function press;
  const FoodItems({
    Key key, this.imgSrc, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0),
      child: Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        onTap: press,
        child: Container(
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width * 0.80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(imgSrc),fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 0.75),
              color: Colors.black12,
            )
          ]
        ),
      ),
      )
    ),
    );
  }
}