import 'package:flutter/material.dart';

class BuildSearch extends StatefulWidget {
  const BuildSearch({super.key});

  @override
  State<BuildSearch> createState() => _BuildSearchState();
}

class _BuildSearchState extends State<BuildSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white.withOpacity(0.2)),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Find Your Favorite Recipe",
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
