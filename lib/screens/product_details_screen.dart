import 'package:fashions_app/controllers/product_details_controller.dart';
import 'package:fashions_app/model/product_model.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends GetView<ProductDetailsController>{
  const ProductDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ProductModel product = Get.arguments;
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        child: Stack(
          children: [
            SizedBox(
              height: Get.height * 0.5,
              child: Stack(
                children: [
                  Image.asset(
                    product.productImage,
                    width: Get.width * 1.0,
                    height: Get.height * 0.5,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 28,
                    left: 30,
                    child: GestureDetector(
                      onTap: Get.back,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kBlackColor,
                        ),
                        height: 44,
                        width: 44,
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: kWhiteColor,
                        )
                      ),
                    ),
                  ),
                  Positioned(
                    top: 28,
                    right: 30,
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        shape: BoxShape.circle
                      ),
                      child: Icon(
                        Icons.shopping_basket_outlined,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 28,
                    right: 30,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        shape: BoxShape.circle
                      ),
                      child: Icon(
                        Icons.favorite_border_rounded,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Positioned(
              top: Get.height * 0.45,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24)
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}