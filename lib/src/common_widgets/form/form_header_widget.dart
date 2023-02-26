import 'package:flutter/material.dart';



class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageColor,
    this.heightBetween,
    this.imageHeight = 0.2,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign,

  }) : super(key: key);

    final Color ? imageColor;
    final double imageHeight;
    final double ? heightBetween;
    final String image,title,subTitle;
    final CrossAxisAlignment crossAxisAlignment;
    final TextAlign ? textAlign;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(image),height: size.height * 0.3,),
        Text(title,style:Theme.of(context).textTheme.headline3,),
        SizedBox(height: heightBetween,),
        Text(subTitle,textAlign: textAlign, style: Theme.of(context).textTheme.bodyText1,),
      ],
    );
  }
}