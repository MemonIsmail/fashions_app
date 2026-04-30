
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../firebase/services/user_services.dart';
import '../model/user_model.dart';
import '../routing/routes.dart';
import '../screens/screen_colors.dart';

class SignupScreenController extends GetxController{
  final RxString name = ''.obs;
  final RxBool showPassword = false.obs;
  final RxBool showConfirmPassword = false.obs;
  final RxBool isChecked = false.obs;

  final UserServices _userServices = UserServices();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  RxBool isLoading = false.obs;

  Future<void> createAccount(String userName, String email, String password) async{

    String? error;

    UserModel user = UserModel(
      userName: userName,
      email: email,
      password: password,
    );

    if(validatePasswords()){
      try{
        isLoading(true);
        error = await _userServices.addUser(user);
        if(error == 'User added Successfully'){
          Get.offAllNamed(kLoginScreenRoute);
          Get.snackbar('Success', error);
        }
        else{
          Get.snackbar(
            'Error', error,
            backgroundColor: kWhiteColor,
          );
        }
      } catch(e){
        Get.snackbar('Error', 'Some error occurred');
      } finally{
        isLoading(false);
      }
    }
    else{
      Get.snackbar('Error', 'Please re-check Password Fields');
      return;
    }
  }

  void togglePassword(){
    showPassword.value = !showPassword.value;
  }

  bool validatePasswords(){
    return passwordController.text == confirmPasswordController.text;
  }

  void toggleConfirmPassword(){
    showConfirmPassword.value = !showConfirmPassword.value;
  }

  void toggleCheckBox(){
    isChecked.value = !isChecked.value;
  }
}