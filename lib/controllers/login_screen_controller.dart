import 'package:fashions_app/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../firebase/services/user_services.dart';
import '../model/user_model.dart';

class LoginScreenController extends GetxController{

  RxString email = ''.obs;
  RxBool showPassword = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final UserServices _userServices = UserServices();

  RxBool isLoading = false.obs;
  String userName = '';
  String userID = '';

  void togglePassword(){
    showPassword.value = !showPassword.value;
  }

  void onCreatePressed(){
    Get.offAllNamed(kSignupScreenRoute);
  }

  Future<void> login(String email, String password) async{
    try{
      isLoading(true);

      final UserModel user = await _userServices.login(email: email, password: password);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('userName', user.userName);
      await prefs.setString('userId', user.id);
      await prefs.setString('email', user.email);
      userName = prefs.getString('userName') ?? '';
      Get.snackbar('Success', 'Welcome, $userName');
      Get.offAllNamed(kMainNavigationRoute);
    } catch(e){
      Get.snackbar('Error', e.toString().replaceAll('Exception: ', ''));
    } finally{
      isLoading(false);
    }
  }
  // void onForgotPressed(){
  //   Get.toNamed(kResetPasswordRoute);
  // }
}