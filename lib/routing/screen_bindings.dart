import 'package:fashions_app/controllers/splash_screen_2_controller.dart';
import 'package:get/get.dart';
import '../controllers/splash_screen_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
    Get.lazyPut(() => SplashScreen2Controller());
  }
}