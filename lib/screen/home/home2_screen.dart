import 'package:bottombardemo/model/bottombar_model.dart';
import 'package:bottombardemo/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  BottomBarViewModel _bottomBarViewModel = Get.put(BottomBarViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Ts(text: "Home Screen 2"),
          SizedBox(
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  _bottomBarViewModel.setSelectedRoute("HomeScreen3");
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
