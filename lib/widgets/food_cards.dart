import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodCards extends StatelessWidget {
  final String imgSrc;
  final String title;
  final String bakery;
  final int amount;
  final bool isFav;
  final double elevation;
  const FoodCards({
    Key key, this.imgSrc, this.title, this.bakery, this.amount, this.isFav = false, this.elevation = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0, right: 25.0,top: 25.0,),
      child: Material(
        elevation: elevation,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.22,
                  height: MediaQuery.of(context).size.height * 0.11,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(image: AssetImage(imgSrc,),fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(title, style: TextStyle(color: Colors.brown, fontSize: 18,fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.pink,size: 20,),
                        Icon(Icons.star,color: Colors.pink,size: 20,),
                        Icon(Icons.star,color: Colors.pink,size: 20,),
                        Icon(Icons.star,color: Colors.pink,size: 20,),
                        Icon(Icons.star_half,color: Colors.pink,size: 20,),
                        SizedBox(width: 7),
                        Text("4.5",style: TextStyle(color: Colors.brown)),
                      ]
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/store.svg",
                          color: Colors.black26,
                          height: 14, 
                          width: 14
                        ),
                        SizedBox(width: 10),
                        Text(
                        bakery,
                        style: TextStyle(
                          color: Colors.black26
                          ),
                        ),
                      ],
                    ),
                  ]
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  height: 18, 
                  width: 18, 
                  color: isFav ? Colors.red : Colors.black26,
                  ),
              ),
            ),
            Positioned(
              left: 275,
              top: 73,
              child: Text("Rp$amount", 
                style: TextStyle(
                  color: Colors.pink, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ]
            )
          ),
        ),
      ),
    );
  }
}