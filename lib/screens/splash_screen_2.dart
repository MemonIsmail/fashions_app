import 'package:fashions_app/controllers/splash_screen_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen2 extends GetView<SplashScreen2Controller>{
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/Splash Screen 2.jpg')
        ],
      ),
    );
  }

}