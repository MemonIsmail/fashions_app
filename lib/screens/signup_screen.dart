import 'package:fashions_app/controllers/signup_screen_controller.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:fashions_app/screens/widgets/custom_button.dart';
import 'package:fashions_app/screens/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends GetView<SignupScreenController>{
  const SignupScreen({super.key});

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
                  'Sign Up',
                  style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                SizedBox(height: Get.height * 0.01,),
                Text(
                  'Create an new account',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),

                SizedBox(height: Get.height * 0.07,),
                CustomTextField(
                  textEditingController: controller.nameController,
                  label: 'User Name',
                  suffixIcon: controller.nameController.text.isNotEmpty
                    ? Icons.check_circle_rounded
                    : null
                  ),

                SizedBox(height: Get.height * 0.04,),
                CustomTextField(
                  textEditingController: controller.emailController,
                  label: 'Email',
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
                Obx(() =>
                  CustomTextField(
                    textEditingController: controller.confirmPasswordController,
                    label: 'Confirm Password',
                    obscureText: controller.showConfirmPassword.value,
                    suffixIcon: controller.showConfirmPassword.value
                      ? Icons.visibility_off_rounded
                      : Icons.visibility_rounded,
                    onTap: controller.toggleConfirmPassword,
                  ),
                ),
                Row(
                  children: [
                    Obx(() =>
                      Transform.scale(
                        scale: 0.8,
                        child: Checkbox(
                          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          side: BorderSide(
                            color: Colors.grey
                          ),
                          activeColor: kBlackColor,
                          value: controller.isChecked.value,
                          onChanged: (value){
                            controller.toggleCheckBox();
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: Get.width * 0.04,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height * 0.03,),
                        Text(
                          'By creating an account, you have to ',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15
                          ),
                        ),
                        Text(
                          'agree with our terms and conditions.',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.04,),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'Sign Up',
                        buttonColor: kBlackColor,
                        borderColor: kBlackColor,
                        textColor: kWhiteColor,
                        onPressed: (){
                          controller.createAccount(
                            controller.nameController.text,
                            controller.emailController.text,
                            controller.passwordController.text,
                          );
                        }
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