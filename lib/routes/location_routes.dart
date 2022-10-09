import 'package:bottombardemo/screen/location/location1_screen.dart';
import 'package:bottombardemo/screen/location/location2_screen.dart';
import 'package:bottombardemo/screen/location/location3_screen.dart';
import 'package:flutter/material.dart';

Widget locationRoutes(String route) {
  switch (route) {
    case 'LocationScreen1':
      return LocationScreen1();
      break;
    case 'LocationScreen2':
      return LocationScreen2();
      break;
    case 'LocationScreen3':
      return LocationScreen3();
      break;
    default:
      return LocationScreen1();
  }
}
