import 'package:bottombardemo/model/bottombar_model.dart';
import 'package:bottombardemo/routes/home_routes.dart';
import 'package:bottombardemo/routes/location_routes.dart';
import 'package:bottombardemo/routes/profile_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  BottomBarViewModel _bottomBarViewModel = Get.put(BottomBarViewModel());

  List<BottomNavigationBarItem> buildBottomNavBarItems(
      int bottomSelectedIndex) {
    return [
      BottomNavigationBarItem(
          icon: bottomSelectedIndex == 0
              ? Icon(Icons.home_outlined)
              : Icon(Icons.home),
          label: ''),
      BottomNavigationBarItem(
          icon: bottomSelectedIndex == 1
              ? Icon(Icons.location_on_outlined)
              : Icon(Icons.location_on),
          label: ''),
      BottomNavigationBarItem(
          icon: bottomSelectedIndex == 2
              ? Icon(Icons.person_outline_outlined)
              : Icon(Icons.person),
          label: ''),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarViewModel>(
      builder: (controller) => Scaffold(
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            child: BottomNavigationBar(
              onTap: (int index) {
                _bottomBarViewModel.setSelectedBottomIndex(index);
                if (index == 0) {
                  _bottomBarViewModel.setSelectedRoute('HomeScreen1');
                } else if (index == 1) {
                  _bottomBarViewModel.setSelectedRoute('LocationScreen1');
                } else {
                  _bottomBarViewModel.setSelectedRoute('ProfileScreen1');
                }
              },
              currentIndex: controller.selectedBottomIndex.value,
              items:
                  buildBottomNavBarItems(controller.selectedBottomIndex.value),
              showSelectedLabels: true,
            ),
          ),
          body: controller.selectedBottomIndex.value == 0
              ? homeRoutes(controller.selectedRoute.value)
              : controller.selectedBottomIndex.value == 1
                  ? locationRoutes(controller.selectedRoute.value)
                  : profileRoutes(controller.selectedRoute.value)),
    );
  }
}
