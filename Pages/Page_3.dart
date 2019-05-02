import 'package:flutter/material.dart';
import 'package:flutter_app/Assets/GenericAppBar.dart';

class ForthMode extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tituloAppBar("Titulo"), 
      bottomNavigationBar: BottomNavigationBar(
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.directions_car), 
            onPressed: () {
              showDialog(
                context: context,
                builder: (context){
                  return 
                  AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(0,15,0,0),
                    backgroundColor: Colors.orangeAccent,
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.warning, size: 60,),
                        Container(
                            child: Text('Alerta',textAlign: TextAlign.center,textScaleFactor: 1.2,),
                          ),
                        ]
                      ,
                    ),                    
                    content: SingleChildScrollView(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: double.infinity,
                            child: Text('Erro do Usuário \n\n\n\n\n\nn\n\n\n\n\n\n\n\n\nn\n\njfilefjailefj\n\nn\n\n\n\n\n\n\njfafjawofow'),
                          )
                          ]
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(child: Text('Entendi!'), 
                      onPressed: () {
                        Navigator.pop(context);
                      },),
                      IconButton(icon: Icon(Icons.golf_course), onPressed: () {},),
                      
                    ],
                  );
                }
                
              );
            },),
            title: Text('car'),
            ),

          BottomNavigationBarItem(icon: Icon(Icons.directions_railway), title: Text('rail')),
          BottomNavigationBarItem(icon: Icon(Icons.directions_run), title: Text('walking')),
        ],

      ),
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
