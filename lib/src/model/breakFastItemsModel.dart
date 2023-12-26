import 'package:recipe_app/src/core/images/pictures.dart';

class BreakFastItems {
  final String foodImage;
  final String calorieText;
  final String foodName;
  final String foodCaption;

  BreakFastItems(
      {required this.foodImage,
      required this.calorieText,
      required this.foodName,
      required this.foodCaption});
}

List<BreakFastItems> breakFastItems = [
  BreakFastItems(
      foodImage: Pictures.cappuccino,
      calorieText: '80 cal',
      foodName: 'Cappuccino',
      foodCaption: 'Start your day with a cup of cappuccino bliss'),
  BreakFastItems(
      foodImage: Pictures.oats,
      calorieText: '150 cal',
      foodName: 'Oats',
      foodCaption: 'a hearty delight that fuels my day!'),
  BreakFastItems(
      foodImage: Pictures.breadRostImage,
      calorieText: '80 cal',
      foodName: 'Bread Roast',
      foodCaption: 'Embracing the simple joy of a warm and toasty Bread Roast.'),
  BreakFastItems(
      foodImage: Pictures.saladImage,
      calorieText: '50 cal',
      foodName: 'Salad',
      foodCaption: 'Crisp, colorful, and oh-so-fresh – indulging in the vibrant goodness of a delicious salad!'),
];
