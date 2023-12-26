import 'package:flutter/material.dart';
import 'package:recipe_app/src/core/colors/colors.dart';
import 'package:recipe_app/src/core/images/pictures.dart';
import 'package:recipe_app/src/pages/beakfastPage.dart';

class ChipWidget extends StatefulWidget {
  const ChipWidget({super.key});

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ActionChip(
            label: Text(
              'Popular',
              style: TextStyle(color: AppColors.greenColor),
            ),
            avatar: CircleAvatar(
              backgroundImage: NetworkImage(Pictures.popular),
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 8,
          ),
          ActionChip(
            shadowColor: Colors.black,
            label: Text(
              'Break Fast',
              style: TextStyle(color: AppColors.greenColor),
            ),
            avatar: CircleAvatar(
              backgroundImage: NetworkImage(Pictures.breakFastImage),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BreakFastPage()),
              );
            },
          ),
          SizedBox(
            width: 8,
          ),
          ActionChip(
            shadowColor: Colors.black,
            label: Text(
              'Snacks',
              style: TextStyle(color: AppColors.greenColor),
            ),
            avatar: CircleAvatar(
              backgroundImage: NetworkImage(Pictures.snacksImage),
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 8,
          ),
          ActionChip(
            shadowColor: Colors.black,
            label: Text(
              'Salad',
              style: TextStyle(color: AppColors.greenColor),
            ),
            avatar: CircleAvatar(
              backgroundImage: NetworkImage(Pictures.saladImage),
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 8,
          ),
          ActionChip(
            shadowColor: Colors.black,
            label: Text(
              'Dinner',
              style: TextStyle(color: AppColors.greenColor),
            ),
            avatar: CircleAvatar(
              backgroundImage: NetworkImage(Pictures.dinnerImage),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
