import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingBTest(),
      body: Center(
      child: RaisedButton(
        onPressed: _incrementCounter,
        child: Text('Increment Counter'),
        ),
      ),
    );
  }
}

class FloatingBTest extends StatefulWidget {
  @override
  _FloatingBTestState createState() => _FloatingBTestState();
}

class _FloatingBTestState extends State<FloatingBTest> {
List<Icon> icone = [
    Icon(Icons.access_time),
    Icon(Icons.account_balance),
    Icon(Icons.adb),
    Icon(Icons.add_circle),
    Icon(Icons.adjust)
  ];
  

  @override
  Widget build(BuildContext context){
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (BuildContext context, snapshot){
        if (snapshot.hasData){
          int intConter = (snapshot.data.getInt('IconNumber') ?? 0);
          print(intConter);
          return FloatingActionButton(
            child: icone[intConter],
            onPressed: () {
              _changeIcon(icone.length);
              setState(() {           
              });
            },
          );
        }
        return Center(child: CircularProgressIndicator());
        }
      
    );
    }
  }

_incrementCounter() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int counter = (prefs.getInt('counter') ?? 0) + 1;
  print('Pressed $counter times.');
  await prefs.setInt('counter', counter);
  }


  _changeIcon(int length) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int counter = (prefs.getInt('IconNumber') ?? 0) + 1;
  if (counter >= length){
    counter = 0;
  }
  await prefs.setInt('IconNumber', counter);
  }


