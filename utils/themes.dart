import 'package:flutter/material.dart';
import 'package:flutter_app/Res/colors.dart';


//enum EnumProvider {oi,vivo,tim,openlabs}

class UtilThemes{

//EnumProvider _enumProvider = EnumProvider.openlabs;

static ThemeData get oiThemeData => 
  ThemeData(
      brightness: Brightness.light,
      //fontFamily: font,
      primaryColor: AppColors.oiYellow,
      accentColor: AppColors.oiPurple,
    );

static ThemeData get timThemeData =>     
  ThemeData(
      brightness: Brightness.light,
      //fontFamily: font,
      primaryColor: AppColors.timBlue,
      accentColor: AppColors.timCyan,
  );

static ThemeData get vivoThemeData =>     
    ThemeData(
      brightness: Brightness.dark,
      //fontFamily: font,
      primaryColor: AppColors.vivoPurple,
      accentColor: AppColors.vivoOrange,
    );

static ThemeData get openLabsThemeData =>   
    ThemeData(
      brightness: Brightness.light,
      //fontFamily: font,
      primaryColor: AppColors.timBlue,
      accentColor: AppColors.timCyan,
    );



// static final List<ThemeData> _themes = [
//     //Theme Oi
//     ThemeData(
//       brightness: Brightness.light,
//       //fontFamily: font,
//       primaryColor: AppColors.oiYellow,
//       accentColor: AppColors.oiPurple,
//     ),
//     //Theme Vivo
//     ThemeData(
//       brightness: Brightness.dark,
//       //fontFamily: font,
//       primaryColor: AppColors.vivoPurple,
//       accentColor: AppColors.vivoOrange,
//     ),
//     //Theme Tim
//     ThemeData(
//       brightness: Brightness.light,
//       //fontFamily: font,
//       primaryColor: AppColors.timBlue,
//       accentColor: AppColors.timCyan,
//     ),
//     //Theme Open Labs
//     ThemeData(
//       brightness: Brightness.light,
//       //fontFamily: font,
//       primaryColor: AppColors.timBlue,
//       accentColor: AppColors.timCyan,
//     ),
//     // ThemeData(
//     //   brightness: Brightness.dark,
//     //   fontFamily: font,
//     //   primaryColor: darkPrimaryColor,
//     //   accentColor: darkAccentColor,
//     //   canvasColor: darkCanvasColor,
//     //   scaffoldBackgroundColor: darkBackgroundColor,
//     //   cardColor: darkCardColor,
//     //   dividerColor: darkDividerColor,
//     //   dialogBackgroundColor: darkCardColor,
//     // ),
//   ];

//   ThemeData getProvider(EnumProvider provider){
//     print(provider.index);
//     return _themes[provider.index];
//   }

//   // ThemeData getThemeData(){
//   //   print(_enumProvider.index);
//   //   return _themes[_enumProvider.index];
//   // }

  
//   ThemeData getThemeData(){
//     print(_enumProvider.index);
//     return _themes[_enumProvider.index];
//   }

//   void setProvider(String provider){
//     for(int index = 0; index< EnumProvider.values.length; index++){
//       if(provider == EnumProvider.values[index].toString()){
//         _enumProvider = EnumProvider.values[index];
//         return; 
//       }
//     }
//     return;
//   }



}