import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:this_time/src/constants/colors.dart';
import 'package:this_time/src/constants/image_strings.dart';
import 'package:this_time/src/constants/text_strings.dart';
import 'package:this_time/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:this_time/src/features/authentication/models/model_on_boarding.dart';
import 'package:this_time/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

 class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {

     final obcontroller = OnBoardingController();


   return Scaffold(
   body: Stack(
   alignment: Alignment.center,
   children: [

   LiquidSwipe(
   pages: obcontroller.pages,
     enableSideReveal: true,
   liquidController: obcontroller.controller,
   slideIconWidget: const Icon(Icons.arrow_back_ios),
   onPageChangeCallback: obcontroller.onPageChangedCallback,
   ),
   Positioned(
   bottom: 60.0,
   child: OutlinedButton(
   onPressed: () => obcontroller.animateToNextSlide(),
   style: ElevatedButton.styleFrom(
   foregroundColor: Colors.white, side: const BorderSide(color: Colors.black26),
   shape: const CircleBorder(),
   padding: const EdgeInsets.all(20),
   ),
   child: Container(
   padding: const EdgeInsets.all(20.0),
   decoration: const BoxDecoration(
   color: tDarkColor, shape: BoxShape.circle
   ),
   child: const Icon(Icons.arrow_forward_ios),
   ),
   ),
   ),

   Positioned(
   top: 50,
   right: 20,
   child : TextButton(
   onPressed: () => obcontroller.skip(),
   child: const Text("Skip", style: TextStyle(color: Colors.grey)),
   ),
   ),

   Obx( () => Positioned(
     bottom: 10,
     child: AnimatedSmoothIndicator(
     activeIndex: obcontroller.currentPage.value,
     effect: const WormEffect(
     activeDotColor: Color(0xff272727),
     dotHeight: 5.0,
     ),
     count: 3,
     )
     ),
   )
   ],
   ),
   );
   }

   }


