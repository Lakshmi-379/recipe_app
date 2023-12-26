import 'package:flutter/material.dart';
import 'package:recipe_app/src/pages/homePage.dart';
import 'package:recipe_app/src/widgets/bottomNavigationPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home:  BottomNavigationPage(),
    );
  }
}

