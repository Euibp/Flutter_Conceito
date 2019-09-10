
import 'package:flutter_app/Pages/Pages.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/Models/model_repository.dart';
import 'package:flutter/material.dart';

//enum EnumNavigator {splash_screen,tour,login,home,quiz,sucess}

enum EnumNavigator {
  home,
  page_1,
  page_2,
  page_3,
  page_4,
  page_5_sql,
  page_6_SP,
  page_7_bloc,
  page_8_cmptheme,
  page_9_portraid_Landscape,
  page_10_dart_io,
  }

class UtilNavigation {


  //All routes for
/*   static Map<String, WidgetBuilder> routes() => <String, WidgetBuilder>{
    getStringRoutes(EnumNavigator.splash_screen): (BuildContext context) => CLASS(),
    getStringRoutes(EnumNavigator.login): (BuildContext context) => CLASS(),
    getStringRoutes(EnumNavigator.home): (BuildContext context) => CLASS(),
    getStringRoutes(EnumNavigator.sucess): (BuildContext context) => CLASS(),
    getStringRoutes(EnumNavigator.tour): (BuildContext context) => CLASS(),
    getStringRoutes(EnumNavigator.quiz): (BuildContext context) => CLASS(),
  }; */


  static Map<String, WidgetBuilder> myroutes() => <String, WidgetBuilder>{
    getStringRoutes(EnumNavigator.home): (BuildContext context) => MyApp(),
    getStringRoutes(EnumNavigator.page_1) : (BuildContext context) => SecondMode(),
    getStringRoutes(EnumNavigator.page_2) : (BuildContext context) => ThirdMode(),
    getStringRoutes(EnumNavigator.page_3) : (BuildContext context) => ForthMode(),
    getStringRoutes(EnumNavigator.page_4) : (BuildContext context) => TestPage(),
    getStringRoutes(EnumNavigator.page_5_sql) : (BuildContext context) => SQLTeste(),
    getStringRoutes(EnumNavigator.page_6_SP) : (BuildContext context) => SharedPreferencesTeste(),
    getStringRoutes(EnumNavigator.page_7_bloc) : (BuildContext context) => ThemeBlocScreen(Repository()),
    getStringRoutes(EnumNavigator.page_8_cmptheme) : (BuildContext context) => Teste(),
    getStringRoutes(EnumNavigator.page_9_portraid_Landscape) : (BuildContext context) => PortraidLandscape(),
    getStringRoutes(EnumNavigator.page_10_dart_io) : (BuildContext context) => DartIO(),
   
  };

  static String getStringRoutes(EnumNavigator enumNavigator){
    String routeString = enumNavigator.toString().substring(enumNavigator.toString().indexOf('.')+1); // Convert "EnumNavigator.Name" -> "Name"
    //print(enumNavigator.toString().substring(enumNavigator.toString().indexOf('.')+1));
    return ('/'+routeString);
  }

  static nextScreen(BuildContext context,EnumNavigator enumNavigator){
    Navigator.pushNamed(context,getStringRoutes(enumNavigator));
  }

  static replaceScreen(BuildContext context, EnumNavigator enumNavigator){
      Navigator.pushNamedAndRemoveUntil(context, getStringRoutes(enumNavigator), (Route<dynamic> routeBool)=> false); 
  }

}