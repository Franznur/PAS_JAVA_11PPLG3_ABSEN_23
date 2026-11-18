import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyek_pas/menu/HomePage.dart';
import 'package:proyek_pas/menu/ProfilePage.dart';
import 'package:proyek_pas/routes.dart';

class MainMenuDrawerController extends GetxController{

  final RxInt SelectedIndex = 0.obs;

  List<Widget> get ListPages => [
    HomePage(),
    ProfilePage(),
    
  ];


  void changeIndex(int index) {

    SelectedIndex.value = index;
  }

}