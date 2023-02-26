import 'package:get/get.dart';
import 'package:this_time/src/features/authentication/screens/dashboard/dashboard.dart';
import 'package:this_time/src/repository/authentication_repository/authentication_repository.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  Future<void> verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const DashBoard()) : Get.back();
  }
}