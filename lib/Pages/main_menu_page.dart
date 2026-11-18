import '../controller/main_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MainMenuPage extends StatelessWidget {
    MainMenuPage({super.key});

final menuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('Main Menu'),
        ),
        body: IndexedStack(
          index: menuController.SelectedIndex.value,
          children: menuController.ListPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: menuController.SelectedIndex.value,
          onTap: (index) {
            menuController.SelectedIndex.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_football),
              label: 'Feat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
