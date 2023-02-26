import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:this_time/src/constants/colors.dart';
import 'package:this_time/src/constants/image_strings.dart';
import 'package:this_time/src/constants/sizes.dart';
import 'package:this_time/src/features/authentication/screens/profile/update_profile_screen.dart';
import 'package:this_time/src/features/authentication/screens/profile/widgets/profile_menu.dart';

import '../../../../constants/text_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {},icon: const Icon(Icons.line_axis),),
        title: Text(tProfile,style: Theme.of(context).textTheme.headline4,),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(isDark ? Icons.linear_scale_outlined : Icons.line_axis_rounded)),
        ],
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
                        child: Icon(Icons.add_photo_alternate_sharp,size: 30.0,color: Colors.grey,),),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Text(tProfileHeading,style: Theme.of(context).textTheme.headline5,),
              Text(tProfileSubHeading,style: Theme.of(context).textTheme.bodyText2,),
              const SizedBox(height: 10,),
              SizedBox(width: 200,
                  child: ElevatedButton(
                  onPressed: () => Get.to(() => UpdateProfileScreen()),
                  child: Text(tEditProfile,style: TextStyle(color: tDarkColor),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tPrimaryColor,side: BorderSide.none,shape: const StadiumBorder()
                  ),
              )
              ),
              SizedBox(height: 10,),
              Divider(),
              SizedBox(height: 10,),

              ProfileMenuWidget(title: "Settings",icon: Icons.linear_scale_outlined,onPress: () {},),
              ProfileMenuWidget(title: "Billing Details",icon: Icons.line_axis_rounded,onPress: () {},),
              ProfileMenuWidget(title: "User Management", icon: Icons.supervised_user_circle, onPress: () {}),
              Divider(color: Colors.grey,),
              ProfileMenuWidget(title: 'Information', icon: Icons.line_style_rounded, onPress: () {}),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: Icons.alternate_email_outlined,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {}
              ),

            ],
          ),
        ),
      ),
    );
  }
}

