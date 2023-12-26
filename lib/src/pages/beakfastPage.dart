import 'package:flutter/material.dart';
import 'package:recipe_app/src/core/colors/colors.dart';
import 'package:recipe_app/src/model/breakFastItemsModel.dart';

class BreakFastPage extends StatefulWidget {
  const BreakFastPage({super.key});

  @override
  State<BreakFastPage> createState() => _BreakFastPageState();
}

class _BreakFastPageState extends State<BreakFastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.theme,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text(
                'Beark Fast',
                style: TextStyle(color: AppColors.greenColor, fontWeight: FontWeight.bold,fontSize: 20,),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 250,
                          width: 300,
                          decoration: BoxDecoration(
                            color: AppColors.greenColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      breakFastItems[index].foodImage),
                                  radius: 80,
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            breakFastItems[index].calorieText,
                                            textAlign: TextAlign.start,
                                            style:
                                                TextStyle(color: Colors.amber),
                                          ),
                                          Icon(Icons.favorite_border,
                                              color: Colors.red),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        breakFastItems[index].foodName,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        breakFastItems[index].foodCaption,
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
