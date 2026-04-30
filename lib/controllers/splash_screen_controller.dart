import 'dart:async';

import 'package:fashions_app/routing/routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  @override
  void onInit() {
    toSplashScreen2();
    super.onInit();
  }

  void toSplashScreen2(){
    Timer(const Duration(seconds: 3), (){
      Get.offAllNamed(kSplashScreen2Route);
    });

  }
}