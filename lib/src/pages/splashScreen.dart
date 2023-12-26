import 'dart:async';

import 'package:flutter/material.dart';
import 'package:recipe_app/src/core/colors/colors.dart';
import 'package:recipe_app/src/core/images/pictures.dart';
import 'package:recipe_app/src/widgets/bottomNavigationPage.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => BottomNavigationPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: NetworkImage(Pictures.splashScreenImage),
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30,),
            Text(
              'Cook, Share, Enjoy',
              style: TextStyle(
                color: AppColors.greenColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
