


import 'package:flutter/material.dart';
import 'package:flutter_app/utils/images.dart';
import 'package:flutter_app/utils/themes.dart';

enum EnumProvider {oi,vivo,tim,openlabs}

class UtilTelecon{

  static Map<EnumProvider,ThemeData> get getThemeFromEnum => {
    EnumProvider.oi : UtilThemes.oiThemeData,
    EnumProvider.tim : UtilThemes.timThemeData,
    EnumProvider.vivo : UtilThemes.vivoThemeData,
    EnumProvider.openlabs : UtilThemes.openLabsThemeData,
  };

  static Map<EnumProvider,TeleconImages> get getImagesfromEnum =>{
    EnumProvider.oi : TeleconImages(
      splashScreen: UtilImages.oiSplashScreen,
      backgroundImage: UtilImages.oiLoginBackground,
      logoImage: UtilImages.oiLogoImage,
    ),
    EnumProvider.tim :  TeleconImages(
      splashScreen: UtilImages.timSplashScreen,
      backgroundImage: UtilImages.timLoginBackground,
      logoImage: UtilImages.timLogoImage,
    ),
    EnumProvider.vivo :  TeleconImages(
      splashScreen: UtilImages.vivoSplashScreen,
      backgroundImage: UtilImages.vivoLoginBackground,
      logoImage: UtilImages.vivoLogoImage,
    ),
    EnumProvider.openlabs :  TeleconImages(
      splashScreen: UtilImages.openLabsSplashScreen,
      backgroundImage: UtilImages.openLabsLoginBackground,
      logoImage: UtilImages.openLabsLogoImage,
    ),
  };

}

class TeleconImages{
  final AssetImage splashScreen;
  final AssetImage logoImage;
  final AssetImage backgroundImage;

  TeleconImages({this.splashScreen, this.logoImage, this.backgroundImage});


}