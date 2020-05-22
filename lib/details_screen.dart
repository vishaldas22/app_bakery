import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10,right: 15,left: 15),
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.pink,
        ),
        child: Center(
          child: Text(
            "Beli Tiket",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/foog.jpg"),fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 8.0),
                  child: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white), onPressed: (){
                    Navigator.pop(context);
                  }),
                ),
              Container(
                margin: EdgeInsets.only(top:400),
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
                ),
              ),
              Positioned(
                top: 368,
                left: 50,
                child: Material(
                  borderRadius: BorderRadius.circular(40),
                  elevation: 4,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset("assets/icons/heart.svg",height: 30,width: 30, color: Colors.red,),
                  ),
                ),
              ),
              Positioned(
                top: 450,
                left: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Solo Bakery \nBeverage", 
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize:38,
                      fontWeight: FontWeight.bold,
                      )
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.pink),
                        SizedBox(width: 10),
                        Text(
                        "Quezon City", 
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize:18,
                          fontWeight: FontWeight.w400,
                          )
                        ),
                      ]
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: Colors.pink),
                        SizedBox(width: 10),
                        Text(
                        "5 Nov 2019", 
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize:18,
                          fontWeight: FontWeight.w400,
                          )
                        ),
                      ]
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 50,
                      ),
                      child: Text(
                        "Konsep tempat ini memang seperti \nitu yang  mana akan membuat\npengunjung dapat lebih banyak\nmenghabiskan", 
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize:18,
                          fontWeight: FontWeight.w400,
                          )
                        ),
                    )
                  ]
                ),
              )
            ], 
          ),
        ),
      ),
    );
  }
}