import 'package:flutter/material.dart';
import 'package:flutter_app/utils/navigation.dart';
import 'package:flutter_app/Models/PageMaps.dart';


void main() => runApp(allRoutes());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue,
          child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buttonIcon(Icons.language,Colors.orangeAccent,context,EnumNavigator.page_7_bloc),
                        _buttonIcon(Icons.airline_seat_legroom_reduced,Colors.purpleAccent,context,EnumNavigator.page_8_cmptheme),
                        _buttonIcon(Icons.phone_forwarded,Colors.purple,context,EnumNavigator.page_2),
                        _buttonText2("Back", Colors.amber, context, EnumNavigator.page_4),
                        _buttonText2("IO", Colors.cyanAccent, context, EnumNavigator.page_10_dart_io)

                        // _buttonShop(Icons.phone_forwarded,Colors.purple,context,'/Page_2'),
                        // _buttonText("Back", Colors.amber, context, '/Page_4'),
                      ],
                    ),                 
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buttonIcon(Icons.assignment_turned_in,Colors.green[800],context, EnumNavigator.page_3),
                        _buttonText2("SQL", Colors.red, context, EnumNavigator.page_5_sql),
                        _buttonText2("Bloc", Colors.blue, context, EnumNavigator.page_7_bloc),
                        _buttonText2("Lands", Colors.indigo, context, EnumNavigator.page_9_portraid_Landscape),
                        _buttonIcon(Icons.ac_unit, Colors.indigo,context, EnumNavigator.page_6_SP)

                        
                        // _buttonShop(Icons.assignment_turned_in,Colors.green[800],context,'/Page_3'),
                        // _buttonText("SQL", Colors.red, context, '/Page_5_SQL'),
                        // _buttonText("Bloc", Colors.blue, context, '/Page_7_Bloc'),
                        // _buttonShop(Icons.ac_unit, Colors.indigo,context, '/Page_6_SP'),
                      ],
                    
                    ),
                  ),
                
                ],
              )
          )
      )
    ;
  }
}

_buttonIcon(IconData icon,Color color,BuildContext context, EnumNavigator navigator){
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14.0)
      ),
      width: 100,
      height: 100,
      child: IconButton(
        icon: Icon(icon,size:55), 
        onPressed: (){
         UtilNavigation.nextScreen(context, navigator);
        },
      )
    ),
  );
}

_buttonText2(String text, Color color,BuildContext context,  EnumNavigator navigator){
  return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: (){
            UtilNavigation.nextScreen(context, navigator);
        },
              child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: color.withOpacity(0.6), 
                offset: Offset(3.5,4.5),
                blurRadius: 4,
                ),
            ]
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          )
        ),
      ),
    );
}



class ButtonShop1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(14.0)
        ),
        width: 100,
        height: 100,
        child: IconButton(
          icon: Icon(Icons.photo,size:55), 
          onPressed: (){
            Navigator.pushNamed(context,'/Page_2');
          },
        )
      ),
    );
  }
}

class ButtonText1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: (){
           Navigator.pushNamed(context,'/Page_4');
        },
              child: Container(
          width: 100,
          height: 100,
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
          alignment: Alignment.center,
          child: Text(
            "Next",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          )
        ),
      ),
    );
  }
}

class ButtonShop2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[800],
          borderRadius: BorderRadius.circular(14.0)
        ),
        width: 100,
        height: 100,
        child: IconButton(
          icon: Icon(Icons.assignment_turned_in,size:55), 
          onPressed: (){
            Navigator.pushNamed(context,'/Page_3');
          },
        ) 
        
      ),
    );
  }
}

class ButtonText2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: (){
           Navigator.pushNamed(context,'/Page_5_SQL');
        },
              child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.amber[700].withOpacity(0.6), 
                offset: Offset(3.5,4.5),
                blurRadius: 4,
                ),
            ]
          ),
          alignment: Alignment.center,
          child: Text(
            "Back",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          )
        ),
      ),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color changeColor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          changeColor = (changeColor == Colors.purple) ? Colors.red[400] : Colors.purple;
        });
      },
      child: Container(
        color: changeColor,
    ),

    );
  }
}




//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.arrow_forward),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
