import 'package:get/get.dart';

class BottomBarViewModel extends GetxController {
  RxString _selectedRoute = 'HomeScreen1'.obs;

  RxString get selectedRoute => _selectedRoute;

  void setSelectedRoute(String value) {
    _selectedRoute = value.obs;
    update();
  }

  RxString _previousRoute = ''.obs;

  RxString get previousRoute => _previousRoute;

  void setPreviousRoute(String value) {
    _previousRoute = value.obs;
    update();
  }

  RxInt _selectedBottomIndex = 0.obs;

  RxInt get selectedBottomIndex => _selectedBottomIndex;

  void setSelectedBottomIndex(int value) {
    _selectedBottomIndex = value.obs;
    update();
  }
}
