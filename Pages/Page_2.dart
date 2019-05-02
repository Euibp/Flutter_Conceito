import 'package:flutter/material.dart';
import 'package:flutter_app/Assets/GenericAppBar.dart';

class ThirdMode extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: baseAppBar("Pictures", context), 
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.purple[200],
          child:PageTest(),
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
              ),
              InstagramHistories(
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
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.red[700].withOpacity(0.6), 
              offset: Offset(3.5,4.5),
              blurRadius: 4,
              ),
          ]
        ),  
        child: IconButton(
        icon: Icon(icon, size:30),
        onPressed: (){
            createText(text);
            
        },
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
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
      ),
    );
  }
}

class InstagramHistories extends StatefulWidget {
  InstagramHistories({this.createText});
  final void Function(String text) createText;

   @override
  _InstagramHistoriesState createState() => _InstagramHistoriesState(
  );
}

class _InstagramHistoriesState extends State<InstagramHistories> {
  String compareText = 'TV';

  Color _colorsChoose(String text, String textCompare){
      if(text==textCompare){
        return Colors.green;
      }
      return Colors.grey;

  }

  Widget _iconButtonPress(IconData icon,String text, String textCompare){
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
          elevation: 7,
          color: _colorsChoose(text, textCompare),
          borderRadius: BorderRadius.circular(14),
          child: InkWell(
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
          ),
            child: IconButton(
            icon: Icon(icon,size: 30),
            onPressed: (){
                widget.createText(text);
                setState(() {
                  compareText = text;
                });
            },
            ),
        ),
          ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.teal,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _iconButtonPress(Icons.tv, 'TV',compareText),
            _iconButtonPress(Icons.network_check, 'Net',compareText),
            _iconButtonPress(Icons.smartphone, 'Smart',compareText),
            _iconButtonPress(Icons.account_box, 'Account',compareText),
            _iconButtonPress(Icons.add_alarm, 'Alarm',compareText),
            _iconButtonPress(Icons.save, 'Save',compareText),
            _iconButtonPress(Icons.laptop, 'Laptop',compareText),
            _iconButtonPress(Icons.library_books, 'Library',compareText),
            _iconButtonPress(Icons.people, 'Contatos',compareText),
          ],
      ),
    );
  }
}