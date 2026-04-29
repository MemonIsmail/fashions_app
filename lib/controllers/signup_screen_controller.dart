
import 'package:get/get.dart';

class SignupScreenController extends GetxController{
  final RxString name = ''.obs;
  final RxBool showPassword = false.obs;
  final RxBool showConfirmPassword = false.obs;
  final RxBool isChecked = false.obs;

  void togglePassword(){
    showPassword.value = !showPassword.value;
  }

  void toggleConfirmPassword(){
    showConfirmPassword.value = !showConfirmPassword.value;
  }

  void toggleCheckBox(){
    isChecked.value = !isChecked.value;
  }
}