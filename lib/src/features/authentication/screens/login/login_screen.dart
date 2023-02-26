import 'package:flutter/material.dart';
import 'package:this_time/src/constants/image_strings.dart';
import 'package:this_time/src/constants/sizes.dart';
import 'package:this_time/src/constants/text_strings.dart';
import 'package:this_time/src/features/authentication/screens/signup/signup_screen.dart';

import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(tDefaultSize),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LoginHeaderWidget(size: tDefaultSize),
                    const LoginForm(),
                    const LoginFooterWidget(),
                  ],
                ),
              ),
          )
      ),
    );
  }
}





