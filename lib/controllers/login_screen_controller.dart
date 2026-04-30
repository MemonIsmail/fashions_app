import 'package:fashions_app/routing/routes.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController{

  RxString email = ''.obs;
  RxBool showPassword = false.obs;

  void togglePassword(){
    showPassword.value = !showPassword.value;
  }

  void onLoginPressed(){
    Get.offAllNamed(kMainNavigationRoute);
  }
}