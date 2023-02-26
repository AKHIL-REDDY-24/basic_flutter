import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:this_time/src/constants/image_strings.dart';
import 'package:this_time/src/constants/sizes.dart';
import 'package:this_time/src/constants/text_strings.dart';
import 'package:this_time/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

import '../../../../../common_widgets/form/form_header_widget.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
           body: SingleChildScrollView(
             child: Container(
         padding: const EdgeInsets.all(tDefaultSize),
         child: Column(
             children: [
               SizedBox(height: tDefaultSize * 4,),
               FormHeaderWidget(
                 image: tForgetPasswordImage,
                 title: tForgetPassword,
                 subTitle: tForgetPasswordSubTitle,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 heightBetween: 30.0,
                 textAlign: TextAlign.center,
               ),
               SizedBox(height: tFormHeight,),
               Form(
                   child: Column(
                     children: [
                       TextFormField(
                         decoration: InputDecoration(
                           label: Text(tEmail),
                           hintText: tEmail,
                           prefixIcon: Icon(Icons.mail_outline_rounded),
                         ),
                       ),
                       SizedBox(height: 20.0,),
                       SizedBox(
                         width: double.infinity,
                         child: ElevatedButton(
                             onPressed: () {
                               Get.to(() => OTPScreen());
                             },
                             child: Text(tNext),
                         ),
                       ),
                     ],
                   ),
               ),
             ],
         ),
       ),
           )
    ),
     );
  }
}
