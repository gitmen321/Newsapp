import 'package:flutter/material.dart';
import 'package:newsapp/controller/news_splash.dart';
import 'package:newsapp/view/main_page.dart';
import 'package:newsapp/view/news_splash.dart';
import 'package:provider/provider.dart';

import 'controller/bottom_nav.dart';
import 'controller/category_controller.dart';
import 'controller/homescreen_con.dart';
import 'controller/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SplashController(),
          ),
          ChangeNotifierProvider(
            create: (context) => HomeScreenController(),
          ),
          ChangeNotifierProvider(
            create: (context) => SearchScreenController(),
          ),
          ChangeNotifierProvider(
            create: (context) => BottomNavController(),
          ),
          ChangeNotifierProvider(
            create: (context) => CategoryController(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Consumer<SplashController>(
            builder: (context, splashScreenProvider, _) {
              return splashScreenProvider.isSplashFinished
                  ? NewsSplash()
                  : MainPage(); // Replace with your home screen
            },
          ),
        ));
  }
}