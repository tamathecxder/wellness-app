import 'package:flutter/material.dart';
import 'package:wellness_app/theme/colors.dart';

class Feeling {
  String image;
  String title;
  Color backgroundColor;

  Feeling(
      {required this.image,
      required this.title,
      required this.backgroundColor});
}

var feelingList = [
  Feeling(
    image: 'assets/images/happy.png',
    title: 'Happy',
    backgroundColor: AppColors.lightPinkColor,
  ),
  Feeling(
    image: 'assets/images/calm.png',
    title: 'Calm',
    backgroundColor: AppColors.lightBlueColor,
  ),
  Feeling(
    image: 'assets/images/relax.png',
    title: 'Relax',
    backgroundColor: AppColors.lightTealColor,
  ),
  Feeling(
    image: 'assets/images/angry.png',
    title: 'Angry',
    backgroundColor: AppColors.lightOrangeColor,
  ),
  Feeling(
    image: 'assets/images/angry.png',
    title: 'Sad',
    backgroundColor: AppColors.lightGreenColor,
  ),
];
