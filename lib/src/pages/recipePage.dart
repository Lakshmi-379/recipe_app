import 'package:flutter/material.dart';
import 'package:recipe_app/src/model/popularItemsModel.dart';
import '../core/colors/colors.dart';

class RecipePage extends StatefulWidget {
  RecipePage({super.key, required this.popularFoodItems});

  final PopularFoodItems popularFoodItems;

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    print('Calorie Text: ${widget.popularFoodItems.calorieText}');
    return Scaffold(
      backgroundColor: AppColors.theme,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(widget.popularFoodItems.foodImage),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.greenColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            widget.popularFoodItems.duration,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      widget.popularFoodItems.calorieText,
                      style: TextStyle(color: Colors.amber),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  widget.popularFoodItems.foodCaption,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'INGREDIENTS : ',
                  style: TextStyle(
                      color: AppColors.greenColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (String ingredient
                        in widget.popularFoodItems.ingrediants)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '- $ingredient',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 8.0),
                        ],
                      ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'DIRECTIONS : ',
                  style: TextStyle(
                      color: AppColors.greenColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0;
                        i < widget.popularFoodItems.description.length;
                        i++)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.greenColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      (i + 1).toString(),
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                              SizedBox(
                                width: 8.0,
                              ),
                              Expanded(
                                  child: Text(
                                '${widget.popularFoodItems.description[i]}',
                                style: TextStyle(color: Colors.white),
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          )
                        ],
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
