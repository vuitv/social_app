import 'package:get/get.dart';
import '../ui/screen/auth/welcome_screen.dart';

class SplashController extends GetxController {
  static SplashController to = Get.find();

  @override
  void onReady() {
    print('SplashController: onReady()');
    Future.delayed(Duration(seconds: 1), () {
      Get.offNamed(WelcomeScreen.routeName);
    });
    super.onReady();
  }

  @override
  void onInit() {
    print('SplashController: onInit()');
    super.onInit();
  }

  @override
  void onClose() {
    print('SplashController: onClose()');
    super.onClose();
  }
}
