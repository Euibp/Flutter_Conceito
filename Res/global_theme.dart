import 'package:flutter/material.dart';
import 'colors.dart';




class GlobalTheme{
  GlobalTheme._();
  static final GlobalTheme state = GlobalTheme._();

  ThemeData themeData;
  AtributeTheme atributeTheme;


  void initGlobalTheme(String operadora){
    

    switch (operadora) { 
      case "TIM":
        atributeTheme = AtributeTheme( Colors.red, Colors.blueAccent, 'lib/resources/logo_tim.png', 'lib/resources/logo_tim.png');
        break; 

      case "OI":
        atributeTheme = AtributeTheme(
          AppColors.oiPurple, 
          AppColors.oiYellow, 
          'lib/resources/oi.png', 
          'lib/resources/oi.png'); 
        break; 

      case "VIVO":
        atributeTheme = AtributeTheme(
          Colors.purple, 
           Colors.blue, 
          'lib/resources/vivo.png', 
          'lib/resources/vivo.png');  
        break; 
      default: 
        atributeTheme = AtributeTheme(
          AppColors.lightGreen, 
          AppColors.cyan, 
          'lib/resources/image_splash.png', 
          'lib/resources/login_bg_open_labs.png'); 
    } 
    themeData = ThemeData(
      primaryColor: atributeTheme.primaryColor,
      accentColor: atributeTheme.secondaryColor,

    );

  }
}


class AtributeTheme{
  //Cores
  final Color primaryColor;
  final Color secondaryColor;

  //Image
  final String splashImagePath;
  final String loginImagePath;

  AtributeTheme(this.primaryColor, this.secondaryColor, this.splashImagePath, this.loginImagePath);

}