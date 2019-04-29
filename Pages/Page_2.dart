import 'package:flutter/material.dart';
import 'package:flutter_app/Assets/GenericAppBar.dart';

class ThirdMode extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThirdMode',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
          appBar: baseAppBar("Pictures", context), 
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.purple[200],
          child:PageTest(),
      )
    )
    );
  }
}

class PageTest extends StatefulWidget {
  @override
  _PageTestState createState() => _PageTestState();
}

class _PageTestState extends State<PageTest> {
  String text = 'Lado C';

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Padding(
        padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                ),
              ),
              ButtonsArea(
                createText: (String newText){
                  setState(() {
                    text = newText;
                  });
                  
                }
              )
            ],
            ),
          ),
      ),     
    );
  }
}

class ButtonsArea extends StatelessWidget{
  const ButtonsArea({this.createText});
  final void Function(String text) createText;
  
  Widget _iconButtonPress(IconData icon,String text){
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: IconButton(
            icon: Icon(icon, size:55),
            onPressed: (){
                createText(text);
            },
          ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _iconButtonPress(Icons.tv, 'TV'),
          _iconButtonPress(Icons.network_check, 'Net'),
          _iconButtonPress(Icons.smartphone, 'Smart'),
          _iconButtonPress(Icons.tv, 'TV'),
          _iconButtonPress(Icons.network_check, 'Net'),
          _iconButtonPress(Icons.smartphone, 'Smart'),
          _iconButtonPress(Icons.tv, 'TV'),
          _iconButtonPress(Icons.network_check, 'Net'),
          _iconButtonPress(Icons.smartphone, 'Smart'),
        ],
      ),
    );
  }
}
