import 'package:bottombardemo/model/bottombar_model.dart';
import 'package:bottombardemo/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationScreen3 extends StatefulWidget {
  const LocationScreen3({Key? key}) : super(key: key);

  @override
  State<LocationScreen3> createState() => _LocationScreen3State();
}

class _LocationScreen3State extends State<LocationScreen3> {
  BottomBarViewModel _bottomBarViewModel = Get.put(BottomBarViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Ts(text: "Location Screen 3"),
          SizedBox(
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  _bottomBarViewModel.setSelectedRoute("LocationScreen1");
                },
                child: Ts(
                  text: "Back",
                  textScaleFactor: 1,
                )),
          )
        ],
      ),
    );
  }
}
