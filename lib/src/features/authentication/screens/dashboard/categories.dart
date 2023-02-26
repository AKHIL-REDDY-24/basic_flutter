import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../models/dashboard/categories_model.dart';

class DashBoardCategories extends StatelessWidget {
  const DashBoardCategories({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategories.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tDarkColor,
                  ),
                  child: Center(child: Text(list[index].title,style: textTheme.headline6?.apply(color: Colors.white10),)),
                ),

                SizedBox(width: 5,),

                   Flexible(

                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(list[index].heading,style: textTheme.headline6,overflow: TextOverflow.ellipsis,selectionColor: Colors.white10,),
                        Text(list[index].subHeading,style: textTheme.bodySmall,overflow: TextOverflow.ellipsis,),
                      ],
                  ),
                   ),

              ],
            ),
          ),
        ),
        /*children: [
          SizedBox(
            width: 170,height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tDarkColor,
                  ),
                  child: Text("JS",style: textTheme.headline6?.apply(color: Colors.white10),),
                ),

                SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Java Script",style: textTheme.headline6,overflow: TextOverflow.ellipsis,),
                      Text("10 Lessons",style: textTheme.bodyText2,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 170,height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tDarkColor,
                  ),
                  child: Text("JS",style: textTheme.headline6?.apply(color: Colors.white10),),
                ),

                SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Java Script",style: textTheme.headline6,overflow: TextOverflow.ellipsis,),
                      Text("10 Lessons",style: textTheme.bodyText2,),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            width: 170,height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tDarkColor,
                  ),
                  child: Text("JS",style: textTheme.headline6?.apply(color: Colors.white10),),
                ),

                SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Java Script",style: textTheme.headline6,overflow: TextOverflow.ellipsis,),
                      Text("10 Lessons",style: textTheme.bodyText2,),
                    ],
                  ),
                ),
              ],
            ),
          ),


        ],*/
      ),
    );
  }
}
