import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class DashBoardBanners extends StatelessWidget {
  const DashBoardBanners({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.bookmark),
                    Flexible(child: Image(image: AssetImage(tBannerImage1))),
                  ],
                ),
                SizedBox(height: 25,),
                Text(tDashBoardBannerTitle1,style: textTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                Text(tDashBoardBannerSubTitle,style: textTheme.bodyText2,maxLines: 1,overflow: TextOverflow.ellipsis,),
              ],
            ),
          ),
        ),

        SizedBox(width: tDashBoardCardPadding,),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Icon(Icons.bookmark)),
                        Flexible(child: Image(image: AssetImage(tBannerImage2))),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Text(tDashBoardBannerTitle2,style: textTheme.headline4,overflow: TextOverflow.ellipsis,),
                    Text(tDashBoardBannerSubTitle,style: textTheme.bodyText2,overflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: () {}, child: Text(tDashBoardButton))
              ),
            ],
          ),
        ),
      ],
    );
  }
}
