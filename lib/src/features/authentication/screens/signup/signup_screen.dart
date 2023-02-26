import 'package:flutter/material.dart';
import 'package:this_time/src/common_widgets/form/form_header_widget.dart';
import 'package:this_time/src/constants/colors.dart';
import 'package:this_time/src/constants/image_strings.dart';
import 'package:this_time/src/constants/sizes.dart';
import 'package:this_time/src/constants/text_strings.dart';
import 'package:this_time/src/features/authentication/screens/signup/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              children:  [
                const FormHeaderWidget(image: tOnBoardingImage4, title: tSignUpTitle, subTitle: tSignUpSubTitle),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Image(image: AssetImage(tGoogleLogoImage),width: 20.0,),
                          label: Text(tSignInWithGoogle.toUpperCase()),
                      ),
                    ),

                    TextButton(
                        onPressed: () {},
                        child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyText1),
                                TextSpan(text: tLogin.toUpperCase()),
                              ],
                            ),
                        ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

