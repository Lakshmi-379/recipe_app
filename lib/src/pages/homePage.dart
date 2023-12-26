import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recipe_app/src/core/colors/colors.dart';
import 'package:recipe_app/src/widgets/chipWidget.dart';
import 'package:recipe_app/src/widgets/popularCardWidget.dart';
import 'package:recipe_app/src/widgets/search.dart';


import '../core/constants/strings.dart';
import '../core/fonts/fontStyles.dart';
import '../core/images/pictures.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.theme,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Strings.name, style: AppFontStyles.titleTextStyle),
                          Text(Strings.message, style: AppFontStyles.subTitleTextStyle,),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(Pictures.profile),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),
                  BuildSearch(),
                  SizedBox(height: 20,),
                  ChipWidget(),
                  PopularCard(),
                ],
              ),
            ),
          ),
        ),
    );

  }
}
