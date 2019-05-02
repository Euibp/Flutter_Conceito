import 'package:flutter/material.dart';
import 'package:flutter_app/Assets/GenericAppBar.dart';



class TutorialOverlay extends ModalRoute<void> {
  
  Duration get transitionDuration => Duration(milliseconds: 500);
  
  bool get opaque => false;
  bool get barrierDismissible => true;
  Color get barrierColor => Colors.pink.withOpacity(0.0);
  String get barrierLabel => null;
  bool get maintainState => true;

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    // This makes sure that text and other content follows the material style
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Material(
        type: MaterialType.transparency,
        // make sure that the overlay content is not cut off
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            color: Colors.blue.withOpacity(0.5),
            child: _buildOverlayContent(context),
          ),
        ),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.teal,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'This is a nice overlay',
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Dismiss'),
            )
          ],
        ),
      ),
    );
  }
  
  }


class SecondMode extends StatelessWidget {
  // This widget is the root of your application.
   
  @override
  Widget build(BuildContext context) {
    return Material(
     child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Oa'),
                accountEmail: Text('Isso'),
                currentAccountPicture: CircleAvatar(
                  child: Text('AeEE'),
                ),
              ),
              ListTile(leading: Icon(Icons.disc_full), title: Text('Disc')),
              ListTile(leading: Icon(Icons.dns), title: Text('Drive'))
            ],
          ),
        ),
          appBar: tituloAppBar("Second Mode"), 
          body:
         SafeArea(
                  child: Center(
                    child: FloatingActionButton(child: Icon(Icons.gradient),onPressed:() {
                      Navigator.of(context).push(TutorialOverlay());
                    },),
                //color: Colors.teal.withOpacity(0.5),
   
     // ),
    ),
          ),
        )
        );

  }
}