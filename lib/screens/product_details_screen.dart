import 'package:fashions_app/controllers/cart_screen_controller.dart';
import 'package:fashions_app/controllers/product_details_controller.dart';
import 'package:fashions_app/model/product_model.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:fashions_app/screens/widgets/custom_button.dart';
import 'package:fashions_app/screens/widgets/custom_color_selector.dart';
import 'package:fashions_app/screens/widgets/custom_size_selector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends GetView<ProductDetailsController>{
  const ProductDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final cartController = Get.find<CartScreenController>();

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
                        Icons.shopping_bag_outlined,
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 36,
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
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24)
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.brand,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),

                              SizedBox(height: Get.height * 0.01,),
                              Text(
                                product.productName,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[400],
                                ),
                              ),
                              SizedBox(height: Get.height * 0.01,),
                              Row(
                                children: [
                                  ...List.generate(
                                      5,
                                      (index) => Icon(
                                      Icons.star,
                                      color: Color(0xfffeab07),
                                      size: 15,
                                    )
                                  ),

                                  SizedBox(width: Get.width * 0.02,),
                                  Text(
                                    '(270 reviews)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                height: 25,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Obx(() =>
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            controller.decreaseQuantity();
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '  ${controller.currentQuantity.value}  ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            controller.addQuantity();
                                          },
                                          child: Icon(
                                            Icons.add,
                                            size: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: Get.height * 0.015,),
                              Text(
                                'Available in Stock',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          )
                        ],
                      ),

                      SizedBox(height: Get.height * 0.03,),
                      Text(
                        'Size',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
                      ),

                      SizedBox(height: Get.height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: Get.height * 0.05,
                              child: Obx((){
                                int currentIndex = controller.selectedSize.value;
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: (product.category == 'Shoes') ? controller.shoesSizes.length : controller.clothesSizes.length,
                                  itemBuilder: (context, index){
                                    return Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: GestureDetector(
                                        onTap: (){
                                          controller.updateSize(index);
                                        },
                                        child: CustomSizeSelector(
                                          size: (product.category == 'Shoes') ? controller.shoesSizes[index] : controller.clothesSizes[index],
                                          isSelected: currentIndex == index,
                                        ),
                                      ),
                                    );
                                  }
                                );
                              }
                              ),
                            ),
                          ),

                          SizedBox(width: Get.width * 0.02,),
                          Container(
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Obx((){
                                int currentIndex = controller.selectedColor.value;
                                return SizedBox(
                                  height: 15,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: controller.colors.length,
                                    itemBuilder: (context, index){
                                      return Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: GestureDetector(
                                          onTap: (){
                                            controller.updateColor(index);
                                          },
                                          child: CustomColorSelector(
                                            color: controller.colors[index],
                                            isSelected: currentIndex == index,
                                          ),
                                        ),
                                      );
                                    }
                                  ),
                                );
                              }
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: Get.height * 0.02,),
                      Text(
                        'Description',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
                      ),

                      SizedBox(height: Get.height * 0.02),
                      Text(
                        product.description,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                        ),
                      ),

                      SizedBox(height: Get.height * 0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Price',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                '\$${product.price}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          CustomButton(
                            text: '  Add to Cart',
                            buttonColor: kBlackColor,
                            borderColor: kBlackColor,
                            textColor: kWhiteColor,
                            icon: Icons.shopping_bag_outlined,
                            iconColor: kWhiteColor,
                            onPressed: (){
                              cartController.addToCart(product, controller.currentQuantity.value);
                              controller.currentQuantity.value = 1;
                              Get.snackbar('Success', 'Product added to cart Successfully');
                            }
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}