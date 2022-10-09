import 'package:bottombardemo/model/bottombar_model.dart';
import 'package:bottombardemo/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen2 extends StatefulWidget {
  const ProfileScreen2({Key? key}) : super(key: key);

  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {
  BottomBarViewModel _bottomBarViewModel = Get.put(BottomBarViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Ts(text: "Profile Screen 2"),
          SizedBox(
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  _bottomBarViewModel.setSelectedRoute("ProfileScreen3");
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
