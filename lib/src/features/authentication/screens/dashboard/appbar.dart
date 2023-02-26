import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:this_time/src/features/authentication/screens/profile/profile_screen.dart';
import 'package:this_time/src/repository/authentication_repository/authentication_repository.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';


class DashBoardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashBoardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu,color: Colors.black54,),
      title: Text(tAppName, style:  Theme.of(context).textTheme.headline4,),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: EdgeInsets.only(top: 7,right: 20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
          child: IconButton(onPressed: () {
            //AuthenticationRepository.instance.logout();
            Get.to(() => ProfileScreen());
          },
            icon: Image(image: AssetImage(tUserProfileImage),),),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
