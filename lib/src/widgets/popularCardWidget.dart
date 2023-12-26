import 'package:flutter/material.dart';
import 'package:recipe_app/src/core/colors/colors.dart';
import 'package:recipe_app/src/model/popularItemsModel.dart';
import 'package:recipe_app/src/pages/recipePage.dart';

class PopularCard extends StatefulWidget {
  const PopularCard({
    super.key,
  });

  @override
  State<PopularCard> createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard> {
  List<bool> isFavoriteList =
      List.generate(popularFood.length, (index) => false);
  void _toggleFavorite(int index) {
    setState(() {
      isFavoriteList[index] = !isFavoriteList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: popularFood.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  PopularFoodItems popularFoodItems = PopularFoodItems(
                      foodImage: popularFood[index].foodImage,
                      calorieText: popularFood[index].calorieText,
                      foodName: popularFood[index].foodName,
                      foodCaption: popularFood[index].foodCaption,
                      duration: popularFood[index].duration,
                      ingrediants: popularFood[index].ingrediants,
                      description: popularFood[index].description);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecipePage(
                              popularFoodItems: popularFoodItems,
                            )),
                  );
                },
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
                          backgroundImage:
                              NetworkImage(popularFood[index].foodImage),
                          radius: 80,
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    popularFood[index].calorieText,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(color: Colors.amber),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      _toggleFavorite(index);
                                    },
                                    icon: Icon(
                                      isFavoriteList[index]
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: isFavoriteList[index]
                                          ? Colors.red
                                          : Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                popularFood[index].foodName,
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
                                popularFood[index].foodCaption,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
