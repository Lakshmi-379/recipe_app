import 'package:recipe_app/src/core/images/pictures.dart';

class PopularFoodItems {
  final String foodImage;
  final String calorieText;
  final String foodName;
  final String foodCaption;
  final String duration;
  final List<String> ingrediants;
  final List<String> description;

  PopularFoodItems({
    required this.foodImage,
    required this.calorieText,
    required this.foodName,
    required this.foodCaption,
    required this.duration,
    required this.ingrediants,
    required this.description
  });
}
List<PopularFoodItems> popularFood = [
  PopularFoodItems(
      foodImage: Pictures.cappuccino,
      calorieText: '80 cal',
      foodName: 'Cappuccino',
      foodCaption: 'Start your day with a cup of cappuccino bliss',
      duration: '15 min',
      ingrediants: ['Espresso', 'steamed milk', 'foam'],
      description: ['Make a shot or two of espresso using your espresso machine or coffee maker.','Heat the desired amount of milk until hot but not boiling and Use the steam wand or milk frother to create a thick and creamy froth.','Pour the brewed espresso into a coffee mug and Spoon the frothed milk on top of the espresso, maintaining a roughly equal ratio.','Add sugar to taste if desired and Optionally, sprinkle cocoa powder or cinnamon on top for flavor and presentation.','Enjoy your homemade cappuccino while its hot and the froth is creamy']),

  PopularFoodItems(
      foodImage: Pictures.chopsyFoodImage,
      calorieText: '502 cal',
      foodName: 'American Chopsuey',
      foodCaption: 'Savoring the delicious chaos of American Chopsuey',
      duration: '20 min',
      ingrediants: ['Ground beef', 'Onion', 'finely chopped', 'Bell pepper', 'chopped''Garlic' , 'minced''Crushed', 'tomatoes''Tomato sauce', 'Tomato paste', 'Sugar', 'Dried oregano', 'Dried basil', 'Salt', 'Black pepper', 'Worcestershire sauce', 'Elbow macaroni'],
      description: ["In a large skillet or Dutch oven, brown the ground beef over medium-high heat. Break it apart with a spoon as it cooks.",
        "Add the chopped onion and bell pepper to the skillet. Cook until the vegetables are softened and the onion is translucent.",
        "Stir in the minced garlic and cook for about 1 minute until fragrant.",
        "Add the crushed tomatoes, tomato sauce, and tomato paste to the skillet. Stir well to combine.",
        "Season the mixture with sugar, dried oregano, dried basil, salt, black pepper, and red pepper flakes (if using). Stir in Worcestershire sauce.",
        "Bring the mixture to a simmer, then reduce the heat to low. Cover and let it simmer for about 15-20 minutes to allow the flavors to meld.",
        "Meanwhile, cook the elbow macaroni according to the package instructions. Drain and set aside.",
        "Once the sauce has simmered and flavors have melded, add the cooked macaroni to the skillet. Stir well to combine and let it cook for an additional 5-10 minutes, allowing the flavors to meld further.",
        "Taste and adjust the seasoning if needed.",
        "Serve hot, optionally topped with grated Parmesan cheese."]),
  PopularFoodItems(
      foodImage: Pictures.dessert,
      calorieText: '80 cal',
      foodName: 'Chocolate Sauce',
      foodCaption: 'Indulging in the sweet layers of Nibby Napoleons drizzled with heavenly chocolate sauce',
      duration: '5 min',
      ingrediants: ["Semisweet or bittersweet chocolate chips",
        "Heavy cream",
        "Unsalted butter",
        "Light corn syrup (optional, for shine)",
        "Vanilla extract (optional)"],
      description: ["In a heatproof bowl, combine the chocolate chips, heavy cream, and butter.",
        "Place the bowl over a pot of simmering water (double boiler) or microwave in short intervals, stirring in between, until the chocolate and butter are melted and the mixture is smooth.",
        "If using, stir in the light corn syrup for added shine.",
        "Remove the bowl from heat and stir in the vanilla extract if desired.",
        "Let the chocolate sauce cool slightly before using or transferring it to a storage container.",
        "Use the chocolate sauce as a topping for ice cream, pancakes, waffles, or any other dessert of your choice."]),
  PopularFoodItems(
      foodImage: Pictures.oats,
      calorieText: '150 cal',
      foodName: 'Oats',
      foodCaption: 'a hearty delight that fuels my day! ',
      duration: '15 min',
      ingrediants: ["Rolled oats",
        "Mixed vegetables (carrots, peas, corn, beans, etc.)",
        "Onion",
        "Garlic",
        "Ginger",
        "Vegetable or chicken broth",
        "Olive oil or butter",
        "Cumin powder",
        "Coriander powder",
        "Salt",
        "Pepper",
        "Fresh herbs (optional, for garnish)"],
      description: ["Heat olive oil or butter in a pot over medium heat.",
        "Add finely chopped onions, minced garlic, and grated ginger. Sauté until the onions are translucent.",
        "Add mixed vegetables and continue to cook for a few minutes until the vegetables are slightly tender.",
        "Stir in cumin powder and coriander powder. Mix well to coat the vegetables.",
        "Pour in the vegetable or chicken broth and bring the mixture to a boil.",
        "Add rolled oats to the boiling broth, stirring continuously to avoid lumps. Reduce heat to a simmer.",
        "Season with salt and pepper to taste. Continue simmering until the oats are cooked and the soup thickens slightly.",
        "Taste and adjust the seasoning if necessary.",
        "If desired, garnish with fresh herbs like parsley or cilantro before serving.",
        "Serve hot and enjoy your nutritious oats soup!"]),
];

