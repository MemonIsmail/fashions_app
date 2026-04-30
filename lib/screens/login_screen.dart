import 'package:fashions_app/controllers/login_screen_controller.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:fashions_app/screens/widgets/custom_button.dart';
import 'package:fashions_app/screens/widgets/custom_textField.dart';
import 'package:fashions_app/screens/widgets/google_button.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginScreen extends GetView<LoginScreenController>{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: Get.height * 0.04,
          backgroundColor: kWhiteColor,
        ),
        backgroundColor: kWhiteColor,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(child: Image.asset('assets/AppLogo.jpg')),

                SizedBox(height: Get.height * 0.04,),
                Text(
                  'Welcome!',
                  style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                SizedBox(height: Get.height * 0.01,),
                Text(
                  'Please login or sign up to continue',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),

                SizedBox(height: Get.height * 0.08,),
                CustomTextField(
                  textEditingController: controller.emailController,
                  label: 'Email',
                  suffixIcon: controller.emailController.text.isNotEmpty
                    ? Icons.check_circle_rounded
                    : null,
                ),

                SizedBox(height: Get.height * 0.04,),
                Obx(() =>
                  CustomTextField(
                    textEditingController: controller.passwordController,
                    label: 'Password',
                    obscureText: controller.showPassword.value,
                    suffixIcon: controller.showPassword.value
                      ? Icons.visibility_off_rounded
                      : Icons.visibility_rounded,
                    onTap: controller.togglePassword,
                  ),
                ),

                SizedBox(height: Get.height * 0.04,),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'Login',
                        buttonColor: kBlackColor,
                        borderColor: kBlackColor,
                        textColor: kWhiteColor,
                        onPressed: (){
                          controller.login(controller.emailController.text, controller.passwordController.text);
                        }
                      ),
                    ),
                  ],
                ),

                SizedBox(height: Get.height * 0.01,),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xffEEEEEE),
                      )
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'or',
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ),

                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xffEEEEEE),
                      )
                    )
                  ],
                ),

                SizedBox(height: Get.height * 0.01,),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        icon: Icons.facebook,
                        iconColor: kWhiteColor,
                        text: ' Continue with Facebook',
                        buttonColor: Color(0xFF3b5997),
                        borderColor: Color(0xFF3b5997),
                        textColor: kWhiteColor,
                        onPressed: (){}
                      ),
                    ),
                  ],
                ),

                SizedBox(height: Get.height * 0.01,),
                Row(
                  children: [
                    Expanded(
                      child: GoogleButton(
                        text: '  Continue with ',
                        highlightedText: 'Google   ',
                        buttonColor: kWhiteColor,
                        borderColor: Color(0xFFD6D6D6),
                        textColor: Colors.grey,
                        onPressed: (){}
                      )
                    ),
                  ],
                ),

                SizedBox(height: Get.height * 0.01,),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        icon: Icons.apple,
                        iconColor: kBlackColor,
                        text: ' Continue with ',
                        highlightedText: 'Apple     ',
                        buttonColor: kWhiteColor,
                        borderColor: Color(0xFFD6D6D6),
                        textColor: Colors.grey,
                        onPressed: (){}
                      ),
                    ),
                  ],
                ),

                SizedBox(height: Get.height * 0.04,)

              ],
            ),
          ),
        ),
      ),
    );
  }

}