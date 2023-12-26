import 'package:flutter/material.dart';
import 'package:recipe_app/src/core/colors/colors.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.theme,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Favorites',
            style: TextStyle(
                color: AppColors.greenColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
