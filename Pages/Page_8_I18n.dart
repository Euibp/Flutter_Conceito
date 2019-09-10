import 'package:flutter/material.dart';
import 'package:flutter_app/utils/images.dart';
import 'package:flutter_app/utils/teleconprovider.dart';

List<EnumProvider> listEnum;

class Teste extends StatefulWidget {
  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  int counter = 0;
  Color color = Colors.amber;
  AssetImage assetImage = UtilImages.timLogoImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image( image:assetImage),
            Container(
              color: color,
              child: Text(EnumProvider.oi.toString())),
          ],
        )
        ),
      floatingActionButton:
          FloatingActionButton(
            onPressed: (){
              counter++;
              if(counter == 1){
                 color = UtilTelecon.getThemeFromEnum[EnumProvider.oi].primaryColor;
                 assetImage = UtilTelecon.getImagesfromEnum[EnumProvider.oi].logoImage;
                 }
              if(counter == 2) {
                color = UtilTelecon.getThemeFromEnum[EnumProvider.vivo].primaryColor;
                 assetImage = UtilTelecon.getImagesfromEnum[EnumProvider.vivo].logoImage;
                }
              if(counter == 3){
                color = UtilTelecon.getThemeFromEnum[EnumProvider.openlabs].primaryColor;
                assetImage = UtilTelecon.getImagesfromEnum[EnumProvider.openlabs].logoImage;
                }
              if(counter == 4) {
                color = UtilTelecon.getThemeFromEnum[EnumProvider.tim].primaryColor;
                assetImage = UtilTelecon.getImagesfromEnum[EnumProvider.tim].logoImage;                
                counter = 0;
              }
              setState(() {
                
              });
            },
          )
      
    );
  }
}