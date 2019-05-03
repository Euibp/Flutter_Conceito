import 'package:flutter/material.dart';
import 'package:flutter_app/Assets/HeaderAssets.dart';

// Example application:

class TestPage extends StatelessWidget {
  void _showOverlay(BuildContext context) {
    Navigator.of(context).push(GenericDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: RaisedButton(
            onPressed: () => _showOverlay(context),
            child: Text('Show Overlay'),
          ),
        ),
      ),
    );
  }
}