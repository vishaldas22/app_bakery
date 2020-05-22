

import 'package:appbakery/widgets/bottom_nav_bar.dart';
import 'package:appbakery/widgets/circle_button.dart';
import 'package:appbakery/widgets/food_cards.dart';
import 'package:appbakery/widgets/food_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'details_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //final bool isChosen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: buildAppBar(),
      body: Container(
        color: Colors.white,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.black12,) ,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.black12
                  )
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children:[
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Lihat Semua", 
                          style: TextStyle(
                            color:Colors.brown, 
                            fontSize: 18
                            ),
                          )
                        ),
                      SizedBox(width: 10),
                      FoodItems(imgSrc: "assets/images/foog.jpg",press: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DetailScreen();
                        }));
                      },),
                      FoodItems(imgSrc: "assets/images/foog.jpg",),
                      // FoodItems(imgSrc: "assets/images/foog.jpg",),
                      // FoodItems(imgSrc: "assets/images/foog.jpg",),
                    ]
                  ),
                )
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left:35.0,bottom: 10.0),
            child: Row(
              children: [
                CircleButton(
                  isClicked: true,
                  svgSrc: "assets/icons/all.svg",
                  title: "Semua",
                ),
                CircleButton(
                  title: "Toko",
                  svgSrc: "assets/icons/store.svg",
                ),
                CircleButton(
                  title: "Kue",
                  svgSrc: "assets/icons/cake.svg",
                ),
                CircleButton(
                  title: "UMKM",
                  svgSrc: "assets/icons/burger.svg",
                ),
                CircleButton(
                  title: "Resep",
                  svgSrc: "assets/icons/recipe.svg",
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 15),
              child: ListView(
              children: [
                FoodCards(
                  amount: 200,
                  title: "Ice Green Cupcake",
                  bakery: "Agus Bakery",
                  imgSrc: "assets/images/greenCake.jpg",
                  elevation: 4,
                ),
                FoodCards(
                  amount: 150,
                  title: "Yellow Ice Cream",
                  bakery: "Kue Kami",
                  imgSrc: "assets/images/yellowIce.jpg",
                  elevation: 0,
                  isFav: true,
                ),
                FoodCards(
                  amount: 90,
                  title: "Smiling Donuts",
                  bakery: "Omah Kue Jogja",
                  imgSrc: "assets/images/smiling.jpg",
                  elevation: 0,
                  isFav: true,
                ),
                FoodCards(
                  amount: 90,
                  title: "Matcha Pie",
                  bakery: "Omah Kue Jogja",
                  imgSrc: "assets/images/matcha.jpg",
                  elevation: 0,
                ),
              ]
          ),
            )
          ),
        ]
          ),
      ),
    );
  }

  

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg",height: 22,width: 22,), onPressed: () {}),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/me.jpg"),
                ),
              ),
              Positioned(
                top: 0,
                left: 29,
                right: 4,
                bottom: 25,
                child: Container(
                  height: 11,
                  width: 11,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.white,
                      width: 2
                    )
                  ),
                ),
              ),
              
            ],
          ),
        )
      ],
    );
  }
}

