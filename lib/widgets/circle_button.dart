import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleButton extends StatelessWidget {
  final String svgSrc;
  final bool isClicked;
  final String title;
  const CircleButton({
    Key key,
     this.svgSrc, this.isClicked = false, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55),
              border: Border.all(
                color: isClicked ? Colors.transparent : Colors.black12,
              )
            ),
            child: CircleAvatar(
            child: SvgPicture.asset(svgSrc,
              height: 22,
              width: 22,
              color: isClicked ? Colors.white : Colors.brown,
              ),
            radius: 25,
            backgroundColor: isClicked ? Colors.pink : Colors.white,
            
            ),
          ),
          SizedBox(height: 10),
          Text(title, style: TextStyle(color: Colors.brown),)
        ],
      ),
    );
  }
}