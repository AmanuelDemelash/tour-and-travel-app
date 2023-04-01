import 'package:get/get.dart';
import 'package:tourandtravel/controllers/homepagecontroller.dart';
import 'package:tourandtravel/controllers/logincontroller.dart';
import 'package:tourandtravel/controllers/onbordingcontroler.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(OnbordingController());
    Get.put(LoginController());
    Get.put(HomepageController());
  }
}
