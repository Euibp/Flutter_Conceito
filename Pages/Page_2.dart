import 'package:flutter/material.dart';
import 'package:flutter_app/Assets/Premolds.dart';

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
          child:ButtonTest(),

      )
    )
    );
  }
}

class ButtonTest extends StatefulWidget {
  @override
  _ButtonTestState createState() => _ButtonTestState();
}

class _ButtonTestState extends State<ButtonTest> {
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
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.backup, size:55),
          onPressed: (){
              createText('TV');
          },
        ),
        IconButton(
          icon: Icon(Icons.border_all, size:55),
          onPressed: (){
              createText('Net');
          },
          ),
          IconButton(
          icon: Icon(Icons.unarchive, size:55),
          onPressed: (){
              createText('Smart');
          },
          ),
      ],
    );
  }
}
