import 'package:bottombardemo/model/bottombar_model.dart';
import 'package:bottombardemo/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen3 extends StatefulWidget {
  const ProfileScreen3({Key? key}) : super(key: key);

  @override
  State<ProfileScreen3> createState() => _ProfileScreen3State();
}

class _ProfileScreen3State extends State<ProfileScreen3> {
  BottomBarViewModel _bottomBarViewModel = Get.put(BottomBarViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Ts(text: "Profile Screen 3"),
          SizedBox(
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  _bottomBarViewModel.setSelectedRoute("ProfileScreen1");
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
