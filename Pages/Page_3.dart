import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/Assets/GenericAppBar.dart';

class ForthMode extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: tituloAppBar("Titulo"), 
          body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.purple[200],
          child: ClipPath(
            clipper: ClipHome(),
            child: Container(
              color: Colors.blue,
            ),

          ),
      )
    );
  }
}

class ClipHome extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, 0);
    path.lineTo(size.width/2, size.height/2);
    path.lineTo(size.width/2, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.lineTo(0 , 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }

}
