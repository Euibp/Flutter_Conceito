import 'package:flutter/material.dart';
import 'package:flutter_app/utils/teleconprovider.dart';

class Repository {
  Future<User> getUser() async {
    //await Future.delayed(Duration(seconds: 2));
    return User(name: 'John', surname: 'Smith', color: Colors.teal);
  }
  
  Future<Color> getColor() async{
    await Future.delayed(Duration(seconds: 2)); // Tirar essa gambiarra no futuro
    return Color(0xFF731290);
  }

  Future<ThemeApp> getThemeApp() async{
    await Future.delayed(Duration(seconds: 2));
    return  ThemeApp(
      primaryColor:Colors.teal,
      secondaryColor:Colors.yellowAccent,
      providerName:'EUI'
      );
  
  }

  Future<ThemeData> getThemeData() async{
    await Future.delayed(Duration(seconds: 2));
    return UtilTelecon.getThemeFromEnum[EnumProvider.tim];
  }
}

class ThemeApp{
  // TODO: Mudar nome variavel de nomeTipo para tipoNome
  final Color primaryColor;
  final Color secondaryColor;
  final String providerName;

  final String splashImage;
  final String loginImage;

  ThemeApp({
    @required this.primaryColor, 
    @required this.secondaryColor, 
    @required this.providerName, 
    this.splashImage, 
    this.loginImage});

}

class User {
  User({
    @required this.name,
    @required this.surname,
    @required this.color,
  });

  final String name;
  final String surname;
  final Color color;
}