import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart'; 
import 'package:flutter_app/utils/navigation.dart';
import 'package:flutter_app/utils/teleconprovider.dart';
/* import 'package:flutter_app/Pages/Page_1.dart';
import 'package:flutter_app/Pages/Page_2.dart';
import 'package:flutter_app/Pages/Page_3.dart'; */

    MaterialApp allRoutes(){
      //UtilThemes().setProvider(EnumProvider.tim.toString());
      return MaterialApp(

      theme: UtilTelecon.getThemeFromEnum[EnumProvider.tim],

      home: MyApp(),

      routes: UtilNavigation.myroutes(),
      );
    }
  