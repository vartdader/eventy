import 'package:eventy/entry_screen.dart';
import 'package:eventy/screens/login_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/entry', routes: {
      '/': (context) => CarouselPage(),
      '/entry': (context) => CarouselPage(),
      '/signin': (context) => LoginScreen(),
    });
  }
}
