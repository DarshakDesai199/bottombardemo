import 'package:bottombardemo/screen/profile/profile1_screen.dart';
import 'package:bottombardemo/screen/profile/profile2_screen.dart';
import 'package:bottombardemo/screen/profile/profile3_screen.dart';
import 'package:flutter/material.dart';

Widget profileRoutes(String route) {
  switch (route) {
    case 'ProfileScreen1':
      return ProfileScreen1();
      break;
    case 'ProfileScreen2':
      return ProfileScreen2();
      break;
    case 'ProfileScreen3':
      return ProfileScreen3();
      break;
    default:
      return ProfileScreen1();
  }
}
