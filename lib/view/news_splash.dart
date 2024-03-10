import 'package:flutter/material.dart';
import 'package:newsapp/view/news_home.dart';

class NewsSplash extends StatefulWidget {
  const NewsSplash({Key? key}) : super(key: key);

  @override
  State<NewsSplash> createState() => _NewsSplashState();
}

class _NewsSplashState extends State<NewsSplash> {
  // Simulating an asynchronous operation (e.g., loading data)
  Future<void> _loadData() async {
    await Future.delayed(Duration(seconds: 3)); // Simulating a delay of 3 seconds
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FutureBuilder(
          future: _loadData(),
          builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // While waiting, show a loading indicator or logo
              return CircularProgressIndicator(); // Replace with your loading widget
            } else {
              // When complete, navigate to the next screen
              WidgetsBinding.instance!.addPostFrameCallback((_) {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));// Replace '/home' with your destination route
              });
              return Container(); // Placeholder widget while waiting for navigation
            }
          },
        ),
      ),
    );
  }
}
