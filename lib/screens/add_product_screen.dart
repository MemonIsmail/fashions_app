import 'package:fashions_app/controllers/add_product_controller.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:fashions_app/screens/widgets/custom_button.dart';
import 'package:fashions_app/screens/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class AddProductScreen extends GetView<AddProductController>{
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
      ),
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Product',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
          
              SizedBox(height: Get.height * 0.03,),
              CustomTextField(
                label: 'Brand Name',
                textEditingController: controller.brandController,
              ),
          
              SizedBox(height: Get.height * 0.02,),
              CustomTextField(
                label: 'Product Name',
                textEditingController: controller.productController,
              ),
          
              SizedBox(height: Get.height * 0.02,),
              CustomTextField(
                label: 'Product Price',
                textEditingController: controller.priceController,
              ),
          
              SizedBox(height: Get.height * 0.02,),
              CustomTextField(
                label: 'Product Description',
                textEditingController: controller.descriptionController,
              ),
          
              SizedBox(height: Get.height * 0.16,),
              CustomButton(
                text: 'Pick Image',
                buttonColor: kBlackColor,
                borderColor: kBlackColor,
                textColor: kWhiteColor,
                onPressed: (){
                  controller.pickImage();
                }
              ),
          
              SizedBox(height: Get.height * 0.02,),
              CustomButton(
                text: 'Add Product',
                buttonColor: kBlackColor,
                borderColor: kBlackColor,
                textColor: kWhiteColor,
                onPressed: (){
                  controller.uploadProduct(
                    controller.brandController.text, 
                    controller.productController.text, 
                    controller.priceController.text, 
                    controller.descriptionController.text, 
                    'Clothes',
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }

}