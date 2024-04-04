import 'package:get/get.dart';

class DashBaordController extends GetxController {
  final Rx<SelectedTab> _selectedTab = Rx(SelectedTab.tabA);

  void changeTab(int index) {
    SelectedTab onComingTab = SelectedTab.values[index];
    if (onComingTab != _selectedTab.value) {
      _selectedTab.value = onComingTab;
    }
  }

  SelectedTab get selectedTab => _selectedTab.value;
}

enum SelectedTab { tabA, tabB, tabC }
