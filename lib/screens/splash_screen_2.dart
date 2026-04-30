import 'package:fashions_app/controllers/splash_screen_2_controller.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:fashions_app/screens/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen2 extends GetView<SplashScreen2Controller>{
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/Splash Screen 2.jpg'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          onPressed: (){
                            controller.toLoginScreen();
                          },
                          text: 'Login',
                          buttonColor: kWhiteColor,
                          borderColor: kWhiteColor,
                          textColor: kBlackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          onPressed: (){
                            controller.toSignupScreen();
                          },
                          text: 'Sign Up',
                          buttonColor: Colors.transparent,
                          borderColor: kWhiteColor,
                          textColor: kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.036,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}