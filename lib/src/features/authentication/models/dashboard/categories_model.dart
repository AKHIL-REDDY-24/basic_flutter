import 'package:flutter/material.dart';
import 'package:this_time/src/features/authentication/screens/dashboard/categories.dart';

class DashboardCategories {

  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategories(this.title,this.heading,this.subHeading,this.onPress );

  static List<DashboardCategories> list = [
    DashboardCategories("JS","Java Script", "5 lessons",null),
    DashboardCategories("F","Flutter","1 Lesson",null),
    DashboardCategories("H","HTML","20",null),
    DashboardCategories("P","Python","100 chaps",null),

  ];

}
