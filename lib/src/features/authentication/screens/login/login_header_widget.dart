import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key, required double size,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(tOnBoardingImage4),height: size.height * 0.3,),
        Text(tLoginTitle,style:Theme.of(context).textTheme.headline3,),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.headline6,),
      ],
    );
  }
}