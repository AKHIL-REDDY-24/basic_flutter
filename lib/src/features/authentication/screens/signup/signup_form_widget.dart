import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:this_time/src/features/authentication/controllers/signup_controller.dart';
import 'package:this_time/src/features/authentication/models/user_model.dart';
import 'package:this_time/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding:const  EdgeInsets.symmetric(vertical: tFormHeight-10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),

            const SizedBox(height: tFormHeight-20,),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),

            const SizedBox(height: tFormHeight-20,),
            TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.numbers_outlined),
              ),
            ),

            const SizedBox(height: tFormHeight-20,),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(height: tFormHeight-20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    //SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());

                    final user = UserModel(
                        email: controller.email.text.trim(),
                        password: controller.password.text.trim(),
                        fullName: controller.fullName.text.trim(),
                        phoneNo: controller.phoneNo.text.trim());

                    SignUpController.instance.createUser(user);

                    //Get.to(() => const OTPScreen());


                  }
                },
                child: Text(tSignup.toUpperCase()),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
