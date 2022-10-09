import 'package:bottombardemo/model/bottombar_model.dart';
import 'package:bottombardemo/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationScreen1 extends StatefulWidget {
  const LocationScreen1({Key? key}) : super(key: key);

  @override
  State<LocationScreen1> createState() => _LocationScreen1State();
}

class _LocationScreen1State extends State<LocationScreen1> {
  BottomBarViewModel _bottomBarViewModel = Get.put(BottomBarViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Ts(text: "Location Screen 1"),
          SizedBox(
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  _bottomBarViewModel.setSelectedRoute("LocationScreen2");
                },
                child: Ts(
                  text: "Next",
                  textScaleFactor: 1,
                )),
          )
        ],
      ),
    );
  }
}
