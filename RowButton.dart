import 'package:flutter/material.dart';

class ButtonIcons extends StatelessWidget {
  
  final String textData;
  final IconData iconData;
  final Color color; 

  final double iconSize;
  final double height;
  final double padding;

  const ButtonIcons({
    Key key, 
    this.iconSize = 50, 
    this.textData = "Login", 
    this.iconData = Icons.beach_access, 
    this.height = 70, 
    this.padding = 12.0, 
    this.color = Colors.brown
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14.0)
        ),
        width: double.infinity,
        height: height,
        child: Row(
          children: <Widget>[
            SizedBox(width: 4,),
            Expanded(
              flex: 1,
              child: Icon(iconData,size: iconSize,)
            ),
            Expanded(
              flex: 5,
             child: Text(
                textData,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                )
            ),
          ]
        )
      ),
    );
  }
}