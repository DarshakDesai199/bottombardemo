import 'package:bottombardemo/model/bottombar_model.dart';
import 'package:bottombardemo/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationScreen2 extends StatefulWidget {
  const LocationScreen2({Key? key}) : super(key: key);

  @override
  State<LocationScreen2> createState() => _LocationScreen2State();
}

class _LocationScreen2State extends State<LocationScreen2> {
  BottomBarViewModel _bottomBarViewModel = Get.put(BottomBarViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Ts(text: "Location Screen 2"),
          SizedBox(
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  _bottomBarViewModel.setSelectedRoute("LocationScreen3");
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
