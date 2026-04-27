import 'package:fashions_app/routing/routes.dart';
import 'package:get/get.dart';

class SplashScreen2Controller extends GetxController{

  void toSignupScreen() {
    Get.offAllNamed(kSignupScreenRoute);
  }

  void toLoginScreen() {
    Get.offAllNamed(kLoginScreenRoute);
  }
}