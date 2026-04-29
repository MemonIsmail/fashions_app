import 'package:fashions_app/routing/routes.dart';
import 'package:get/get.dart';

class SplashScreen2Controller extends GetxController{

  void toSignupScreen() {
    Get.toNamed(kSignupScreenRoute);
  }

  void toLoginScreen() {
    Get.toNamed(kLoginScreenRoute);
  }
}