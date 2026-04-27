import 'package:get/get.dart';

class LoginScreenController extends GetxController{

  RxString email = ''.obs;
  RxBool showPassword = false.obs;

  void togglePassword(){
    showPassword.value = !showPassword.value;
  }
}