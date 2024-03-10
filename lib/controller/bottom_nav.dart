import 'package:flutter/material.dart';
import '../view/category_screen.dart';
import '../view/news_home.dart';
import '../view/search_screen.dart';

class BottomNavController with ChangeNotifier{

  int selectedIndex = 1;

  void onItemTap(index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<Widget> myPages = [
    HomeScreen(),
    CAtegoryScreen(),
    SearchScreen()
  ];

}