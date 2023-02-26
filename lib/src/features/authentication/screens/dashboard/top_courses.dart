import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';

class DashBoardTopCourses extends StatelessWidget {
  const DashBoardTopCourses({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: EdgeInsets.only(right: 10,top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(child: Text("Flutter crash course",style: textTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,)),
                        Flexible(child: Image(image: AssetImage(tTopCourseImage1),height: 110,)),
                      ],
                    ),

                    Row(
                      children: [
                        ElevatedButton(
                          style : ElevatedButton.styleFrom(shape: CircleBorder()),
                          onPressed: () {},
                          child: Icon(Icons.play_arrow),
                        ),
                        SizedBox(width: tDashBoardCardPadding,),
                        Column(
                          children: [
                            Text("3 Sections",style: textTheme.headline4,overflow: TextOverflow.ellipsis,),
                            Text("Programming Languages",style: textTheme.bodySmall,overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(
            width: 320,
            height: 200,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(child: Text("Javascript course",style: textTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,)),
                      Flexible(child: Image(image: AssetImage(tBannerImage2),height: 110,)),
                    ],
                  ),

                  Row(
                    children: [
                      ElevatedButton(
                        style : ElevatedButton.styleFrom(shape: CircleBorder()),
                        onPressed: () {},
                        child: Icon(Icons.play_arrow),
                      ),
                      SizedBox(width: tDashBoardCardPadding,),
                      Column(
                        children: [
                          Text("3 Sections",style: textTheme.headline4,overflow: TextOverflow.ellipsis,),
                          Text("Programming Languages",style: textTheme.bodySmall,overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            width: 320,
            height: 200,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(child: Text("Kotlin crash course",style: textTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,)),
                      Flexible(child: Image(image: AssetImage(tTopCourseImage2),height: 110,)),
                    ],
                  ),

                  Row(
                    children: [
                      ElevatedButton(
                        style : ElevatedButton.styleFrom(shape: CircleBorder()),
                        onPressed: () {},
                        child: Icon(Icons.play_arrow),
                      ),
                      SizedBox(width: tDashBoardCardPadding,),
                      Column(
                        children: [
                          Text("3 Sections",style: textTheme.headline4,overflow: TextOverflow.ellipsis,),
                          Text("Programming Languages",style: textTheme.bodySmall,overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}