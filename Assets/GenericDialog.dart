import 'package:flutter/material.dart';


class GenericDialog extends ModalRoute<void> {
  

  final Color backGroundColor;
  final bool dismissBarrier;
  final int animationTime;
  final List<Widget> title;
  final Widget content;
  final List<Widget> actions;


  //  Widget _titleConstructor(){
  //   return Column(
  //     children: <Widget>[Text('Texto\n\n\n\n\n\n\n',style: TextStyle(color: Colors.black,fontSize: 20))],
  //   );
  // }

  GenericDialog({ 
    this.backGroundColor = Colors.white, 
    this.dismissBarrier = true, 
    this.animationTime = 500,
    this.title,
    this.content,
    this.actions,
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
     return  Padding(
        padding: const EdgeInsets.all(25.0),
         child: _buildOverlayContent(context),
    
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
          child: Material(
            elevation: 20,
            borderRadius: BorderRadius.circular(25.0),
             child: Container(
              width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25.0),
                 //border: Border.all(width: 3),
                 color: Colors.orangeAccent
               ),
               
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.tight ,
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: (title == null) ? <Widget>[] : title,
                      
                    )//title,
                    //Icon(Icons.settings),
                     
                  ),
                  Flexible(
                    flex: 10,
                    fit: FlexFit.loose, 
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        minHeight: 100
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: content
                        ),
                      ),
                    ),
                  ),
                  
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                         children: (actions == null) ? <Widget>[] : actions   /*<Widget>[ //Ponto de Classe
                          RaisedButton.icon(icon: Icon(Icons.arrow_back), onPressed: () {
                            Navigator.pop(context);
                          }, label: Text('GoodBye'),),
                        ],*/
                      ),
                    ),)
                ],
               ),
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