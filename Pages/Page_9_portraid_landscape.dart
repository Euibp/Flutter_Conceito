import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PortraidLandscape extends StatefulWidget {
  @override
  _PortraidLandscapeState createState() => _PortraidLandscapeState();
}

setOrientation({DeviceOrientation orientation}) async {
  await SystemChrome.setPreferredOrientations([
    orientation
  ]);
}

class _PortraidLandscapeState extends State<PortraidLandscape> {


  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text((orientation == Orientation.portrait) ? 'Portraid':'Landscape'),
      ),
      body: (orientation == Orientation.portrait) ? PortraidScreen():LandscapeScreen(),
    );
  }
}



class PortraidScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Container(
          color: Colors.orange,
          height: height/2,
          width: double.infinity,
        ),
        ChangeOrientationButtons()
      ], 
    );
  }
}

class LandscapeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          color: Colors.orange,
          height: height,
          width: height/3,
        ),
        ChangeOrientationButtons()
      ], 
    );
  }
}

class ChangeOrientationButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           RaisedButton(
            child: Text('LAND'),
            onPressed: (){
              setOrientation(orientation: DeviceOrientation.landscapeRight);
            },
          ),
           RaisedButton(
            child: Text('PORT'),
            onPressed: (){
              setOrientation(orientation: DeviceOrientation.portraitUp);
            },
          )
          ]
        ),
        );
  }
}