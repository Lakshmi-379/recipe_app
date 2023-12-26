import 'package:flutter/material.dart';

import '../core/colors/colors.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.theme,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('My Favorites')
            ],
          ),
        ),
      ),

    );
  }
}
