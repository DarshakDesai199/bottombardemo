import 'package:bottombardemo/screen/home/home1_screen.dart';
import 'package:bottombardemo/screen/home/home2_screen.dart';
import 'package:bottombardemo/screen/home/home3_screen.dart';
import 'package:flutter/material.dart';

Widget homeRoutes(String route) {
  switch (route) {
    case 'HomeScreen1':
      return HomeScreen1();
      break;
    case 'HomeScreen2':
      return HomeScreen2();
      break;
    case 'HomeScreen3':
      return HomeScreen3();
      break;
    default:
      return HomeScreen1();
  }
}
