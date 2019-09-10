
import 'package:flutter/material.dart';

class UtilImages{
  
  /*=====================================================================================*/
  // Undefied
  static const String pathImagen = 'assets/images';
  static AssetImage get defaultProfileImage => AssetImage('$pathImagen/logo_oi.png');
  //static AssetImage get defaultProfileImage => AssetImage('$pathImagen/logo_oi.png');
    
  static const String pathImageDefault  = 'assets/images/default';
  static AssetImage get placeholderDiagnosticCard => AssetImage('$pathImageDefault/placeholder_diagnostic_card.png');
  static AssetImage get placeholderProfilePicture => AssetImage('$pathImageDefault/placeholder_profile_picture.png');
  static AssetImage get placeholderServiceIcon => AssetImage('$pathImageDefault/placeholder_servicers_icon.png');



  /*=====================================================================================*/
  //Logos
  static const String pathImageLogo = 'assets/images/logos';
  // static const List<AssetImage> _logoImageList = [
  //   AssetImage('$pathImageLogo/logo_oi.png'),
  //   AssetImage('$pathImageLogo/logo_vivo.png'),
  //   AssetImage('$pathImageLogo/logo_open_labs.png'),
  //   AssetImage('$pathImageLogo/logo_tim.png'),
  // ];

  // static AssetImage logoImage(int index) {
  //   return _logoImageList[index];
  // }

  static AssetImage get oiLogoImage => AssetImage('$pathImageLogo/logo_oi.png');
  static AssetImage get vivoLogoImage => AssetImage('$pathImageLogo/logo_vivo.png');
  static AssetImage get openLabsLogoImage => AssetImage('$pathImageLogo/logo_open_labs.png');
  static AssetImage get timLogoImage => AssetImage('$pathImageLogo/logo_tim.png');

  /*=====================================================================================*/
  //Splash Screen
  static const String pathSplashScreen = 'assets/images/logos';
  // static const List<AssetImage> _splashScreenList = [
  //   AssetImage('$pathSplashScreen/logo_oi.png'),
  //   AssetImage('$pathSplashScreen/logo_vivo.png'),
  //   AssetImage('$pathSplashScreen/logo_open_labs.png'),
  // ];

  static AssetImage get oiSplashScreen => AssetImage('$pathSplashScreen/logo_oi.png');
  static AssetImage get vivoSplashScreen => AssetImage('$pathSplashScreen/logo_vivo.png');
  static AssetImage get openLabsSplashScreen => AssetImage('$pathSplashScreen/logo_open_labs.png');
  static AssetImage get timSplashScreen => AssetImage('$pathSplashScreen/logo_tim');

  /*=====================================================================================*/
  //backgrounds
  static const String pathLoginBackground = 'assets/images/background';
  static AssetImage get oiLoginBackground => AssetImage('$pathLoginBackground/background_login_oi.jpg');
  static AssetImage get vivoLoginBackground => AssetImage('$pathLoginBackground/background_login_vivo.png');
  static AssetImage get openLabsLoginBackground => AssetImage('$pathLoginBackground/background_login_open_labs.jpg');
  static AssetImage get timLoginBackground => AssetImage('$pathLoginBackground/background_login_tim.jpg');

  /*=====================================================================================*/
  //Icons
  static const String pathIcon = 'assets/images/icons';
  static AssetImage get logoutIcon => AssetImage('$pathIcon/icon_logout.png');
  static AssetImage get surveyIcon => AssetImage('$pathIcon/icon_survey.png');
  static AssetImage get tourIcon => AssetImage('$pathIcon/icon_tour.png');
  static AssetImage get cameraProfileIcon => AssetImage('$pathIcon/icon_camera_profile.png');
  static AssetImage get cancelRedIcon => AssetImage('$pathIcon/icon_cancel_red.png');
  static AssetImage get okGreenIcon => AssetImage('$pathIcon/icon_ok_green.png');


  /*=====================================================================================*/
  //gifs
  static const pathGifs = 'assets/gifs';
  static AssetImage get loadingGif => AssetImage('$pathGifs/loading.gif');


}