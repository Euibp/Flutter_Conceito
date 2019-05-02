import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/Pages/Pages.dart'; // resolve todas as páginas
/* import 'package:flutter_app/Pages/Page_1.dart';
import 'package:flutter_app/Pages/Page_2.dart';
import 'package:flutter_app/Pages/Page_3.dart'; */

    MaterialApp allRoutes(){
      return MaterialApp(
      
      theme: ThemeData(
        //cardColor: Colors.blue,
       // accentColor: Colors.black,
        bottomAppBarColor: Colors.teal,
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.grey,
          elevation: 8,
          shape: CircularNotchedRectangle(),
        ),

      ), 

        home: MyApp(),

        routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => MyApp(),
        '/Page_1' : (BuildContext context) => SecondMode(),
        '/Page_2' : (BuildContext context) => ThirdMode(),
        '/Page_3' : (BuildContext context) => ForthMode(),
        '/Page_4' : (BuildContext context) => TestPage(),
        }
      );
    }
  