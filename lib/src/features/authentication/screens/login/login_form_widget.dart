import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:this_time/src/features/authentication/screens/dashboard/dashboard.dart';
import 'package:this_time/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_buttom_sheet.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../forget_password/forget_password_options/forget_password_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(child: Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight-10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: tEmail,
              hintText: tEmail,
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: tFormHeight-20,),

          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                )
            ),
          ),

          const SizedBox(height: tFormHeight-20,),
          Align(
              alignment:Alignment.centerRight,
              child : TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text(tForgetPassword),
              )
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => DashBoard());
              },
              child: Text(tLogin.toUpperCase()),
            ),
          ),
        ],
      ),
    ),
    );
  }

  Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    builder: (context) => Container(
                      padding: EdgeInsets.all(tDefaultSize),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tForgetPasswordTitle, style: Theme.of(context).textTheme.headline2,),
                            Text(tForgetPasswordSubTitle,style: Theme.of(context).textTheme.bodyText1,),
                            const SizedBox(height:30.0,),
                            SingleChildScrollView(
                              child: ForgetPasswordBtnWidget(
                                btnIcon: Icons.mail_outline_rounded,
                                title: tEmail,
                                subTitle: tResetViaEmail,
                                onTap: () {},
                              ),
                            ),
                            SizedBox(height: 20.0,),
                            SingleChildScrollView(
                              child: ForgetPasswordBtnWidget(
                                btnIcon: Icons.mobile_friendly_rounded,
                                title: tPhoneNo,
                                subTitle: tResetViaPhone,
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),

                    ),
                );
  }
}

