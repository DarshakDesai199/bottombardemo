import 'package:bottombardemo/model/bottombar_model.dart';
import 'package:bottombardemo/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  BottomBarViewModel _bottomBarViewModel = Get.put(BottomBarViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Ts(text: "Home Screen 1 "),
          SizedBox(
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  _bottomBarViewModel.setSelectedRoute("HomeScreen2");
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
