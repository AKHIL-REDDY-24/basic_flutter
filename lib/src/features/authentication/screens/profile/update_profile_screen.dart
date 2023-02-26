import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:this_time/src/constants/text_strings.dart';
import 'package:this_time/src/features/authentication/screens/profile/widgets/profile_menu.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: Icon(Icons.linear_scale),),
        title: Text(tEditProfile,style: Theme.of(context).textTheme.headline5,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children:  [
              Stack(
                children: [
                  SizedBox(
                    width: 120, height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(image: AssetImage(tProfileImage))
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: tPrimaryColor,
                      ),
                      child: Icon(Icons.camera,size: 30.0,color: Colors.grey,),),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text(tFullName),
                        prefixIcon: Icon(Icons.line_axis_rounded),
                      ),
                    ),
                    SizedBox(height: tFormHeight-20,),

                    TextFormField(
                      decoration: InputDecoration(
                        label: Text(tEmail),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                    SizedBox(height: tFormHeight-20,),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text(tPhoneNo),
                        prefixIcon: Icon(Icons.phone_android_rounded),
                      ),
                    ),
                    SizedBox(height: tFormHeight-20,),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text(tPassword),
                        prefixIcon: Icon(Icons.fingerprint_outlined),
                      ),
                    ),
                    SizedBox(height: tFormHeight,),
                    SizedBox(
                      height: tFormHeight,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => UpdateProfileScreen()),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: tPrimaryColor,side: BorderSide.none,shape: StadiumBorder()
                        ), child: Text(tEditProfile,style: TextStyle(color: tAccentColor),),
                      ),
                    ),

                    SizedBox(height: tFormHeight),

                    const SizedBox(height: tFormHeight,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: tJoined,
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(text: tJoined,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                            ]
                          )
                        ),

                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent.withOpacity(0.1),
                                elevation: 0,
                              foregroundColor: Colors.red,
                              shape: StadiumBorder(),
                              side: BorderSide.none,
                            ),

                            child: Text(tDelete),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
