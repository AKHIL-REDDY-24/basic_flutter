import 'package:flutter/material.dart';
import 'package:this_time/src/constants/colors.dart';
import 'package:this_time/src/constants/image_strings.dart';
import 'package:this_time/src/constants/sizes.dart';
import 'package:this_time/src/features/authentication/screens/dashboard/search.dart';
import 'package:this_time/src/features/authentication/screens/dashboard/top_courses.dart';

import '../../../../constants/text_strings.dart';
import 'appbar.dart';
import 'banners.dart';
import 'categories.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: DashBoardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDashBoardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tDashBoardTitle,style: textTheme.bodyText2,),
              Text(tDashBoardHeading,style: textTheme.headline6,),
              SizedBox(height: tDashBoardPadding,),
              //Search Box
              DashBoardSearchBox(textTheme: textTheme),
              SizedBox(height: tDashBoardPadding,),
              //Categories
              
              DashBoardCategories(textTheme: textTheme),
              
              //Banners
              DashBoardBanners(textTheme: textTheme),
              const SizedBox(height: tDashBoardPadding,),

              //Top Courses
                 Text(tDashBoardTopCourses,style: textTheme.headline6?.apply(fontSizeFactor: 1.2),),
                 DashBoardTopCourses(textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }
}






