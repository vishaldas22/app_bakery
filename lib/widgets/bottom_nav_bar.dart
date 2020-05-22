import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home, color: Colors.pink, size: 28,),
                    Stack(
                      children: [
                        Icon(Icons.insert_photo, color: Colors.black26),
                        Positioned(
                          top: 0,
                          left: 12,
                          right: 0,
                          bottom: 12,
                          child: Container(
                            height: 9,
                            width: 9,
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
                    
                    Icon(Icons.shopping_cart, color: Colors.black26),
                    SvgPicture.asset("assets/icons/borderedheart.svg", height: 20, width: 20, color: Colors.black26,),
                  ],
                ),
              ),
            );
  }
}