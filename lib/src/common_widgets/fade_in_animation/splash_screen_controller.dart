import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:this_time/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:this_time/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
     animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(const WelcomeScreen());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WheelEvent))

  }

}