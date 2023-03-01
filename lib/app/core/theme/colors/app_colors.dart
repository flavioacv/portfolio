
import 'package:flutter/material.dart';

class AppColors extends AppColorsBase {
  AppColors._();


  static final instance = AppColors._();

  //White #FFFFFF
  @override
  final Color white = const Color(0xFFFFFFFF);

  //Blue-Dark #161b22
  @override
  final Color blueDark = const Color(0xFF161b22);
  
  @override
  //Black
  Color get black => const Color(0xFF0d1117);
  

}

abstract class AppColorsBase {
  //White #FFFFFF
  abstract final Color white;

  //Blue-Dark #161b22
  abstract final Color blueDark;

  //Black #0d1117
  abstract final Color black;




}




