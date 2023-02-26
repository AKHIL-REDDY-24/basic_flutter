

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:this_time/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:this_time/src/constants/colors.dart';
import 'package:this_time/src/constants/image_strings.dart';
import 'package:this_time/src/constants/sizes.dart';
import 'package:this_time/src/constants/text_strings.dart';
import 'package:this_time/src/common_widgets/fade_in_animation/splash_screen_controller.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../controllers/fade_in_animation_controller.dart';


class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
   // FadeInAnimationController.find.startAnimation();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
             TFadeInAnimation(
                 durationInMs: 1600,
                 animate: TAnimatePosition(
                   topAfter: 0,topBefore: 0,leftBefore: -30,leftAfter: 0,
                 ),
                 child: const Image(image: AssetImage(tSplashTopIcon)),
             ),

           TFadeInAnimation(
             durationInMs: 2000,
             animate: TAnimatePosition(topBefore: 80,topAfter: 80,leftAfter: tDefaultSize,leftBefore: -80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(tAppName, style: Theme.of(context).textTheme.headline4,),
                           Text(tAppTagLine,style: Theme.of(context).textTheme.headline3,)
                         ],
                        ),
           ),

               TFadeInAnimation(
                 durationInMs: 2400,
                 animate: TAnimatePosition(
                   bottomAfter: 0,bottomBefore: 100,
                 ),
                        child: Image(image: AssetImage(tSplashImage),
                        ),
               ),

             TFadeInAnimation(
               durationInMs: 2400,
               animate: TAnimatePosition(bottomBefore: 0,bottomAfter: 60,rightBefore: tDefaultSize,rightAfter: tDefaultSize),
                        child: Container(
                          width: tSplashContainerSize,
                          height: tSplashContainerSize,
                          color: tPrimaryColor,
                        ),
             ),

          ],
        ),
      ),
    );

  }

}


