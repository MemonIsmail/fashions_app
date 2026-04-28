import 'package:fashions_app/controllers/home_screen_controller.dart';
import 'package:fashions_app/controllers/login_screen_controller.dart';
import 'package:fashions_app/controllers/main_navigation_controller.dart';
import 'package:fashions_app/controllers/signup_screen_controller.dart';
import 'package:fashions_app/controllers/splash_screen_2_controller.dart';
import 'package:get/get.dart';
import '../controllers/splash_screen_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
    Get.lazyPut(() => SplashScreen2Controller());
    Get.lazyPut(() => SignupScreenController());
    Get.lazyPut(() => LoginScreenController());
    Get.lazyPut(() => HomeScreenController());
    Get.lazyPut(() => MainNavigationController());
  }
}