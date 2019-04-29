import 'package:flutter/material.dart';
import 'package:flutter_app/Assets/GenericAppBar.dart';

class ForthMode extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: baseAppBar("TopSlide", context), 
          body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.purple[200],
      )
    );
  }
}
