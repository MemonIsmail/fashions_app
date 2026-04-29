import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreen extends GetView<SplashScreenController>{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      body: Image.asset('assets/Splash Screen 1.jpg')
    );
  }
}