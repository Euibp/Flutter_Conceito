import 'package:flutter/material.dart';


class GenericDialog extends ModalRoute<void> {
  

  final Color backGroundColor;
  final bool dismissBarrier;
  final int animationTime;

  GenericDialog({ 
    this.backGroundColor = Colors.white, 
    this.dismissBarrier = true, 
    this.animationTime = 500
    });

  bool get opaque => false;
  Color get barrierColor => Colors.pink.withOpacity(0.0);
  String get barrierLabel => null;
  bool get maintainState => true;
  
  @override Duration get transitionDuration => Duration(milliseconds: animationTime);
  @override bool get barrierDismissible => dismissBarrier;
  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
     return Material(

        child: Padding(
        padding: const EdgeInsets.all(25.0),
         child: _buildOverlayContent(context),
    ),
     );
  }

  Widget _buildOverlayContent(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.transparent,
        body: Dismissible(
        key: Key(""),
         onDismissed: (DismissDirection horizontal){
           Navigator.pop(context);
         },
          child: Center(
          child: Container(

            width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25.0),
               border: Border.all(width: 3),
               color: Colors.orangeAccent
             ),
             
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight ,
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.teal,
                    child: Icon(Icons.settings, size: double.maxFinite,)),
                  ),  
                
                Flexible(
                  flex: 5,
                  fit: FlexFit.loose, 
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                      children: <Widget>[Text('Texto',style: TextStyle(color: Colors.black,fontSize: 20))],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: RaisedButton.icon(icon: Icon(Icons.assignment_return), onPressed: () {
                    
                  }, label: Text('data'),),)
              ],
             ),
          ),
    ),
       ),
     );
  }

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }

}