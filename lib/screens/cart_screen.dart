import 'package:fashions_app/controllers/cart_screen_controller.dart';
import 'package:fashions_app/model/cart_item_model.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends GetView<CartScreenController>{
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kBlackColor,
            ),
            child: GestureDetector(
              onTap: (){
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: kWhiteColor,
                size: 20,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kWhiteColor,
            ),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: kBlackColor,
            ),
          )
        ],
        actionsPadding: EdgeInsets.only(right: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),

            Expanded(
              child: Obx(() {

                if (controller.cartItems.isEmpty) {
                  return Center(child: Text('Your cart is empty'));
                }

                return ListView.separated(
                  itemCount: controller.cartItems.length,

                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Divider(thickness: 1, color: Colors.grey[300]),
                  ),

                  itemBuilder: (context, index) {
                    final item = controller.cartItems[index];

                    return addedProduct(item);
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
  Widget addedProduct(CartItemModel item){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(
          item.productImage,
          height: 80,
          width: 80,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.brand,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                item.productName,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: Get.height * 0.03,),
              Text(
                '\$${item.price}',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16
                ),
              )
            ],
          ),
        ),
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
                        controller.decreaseQuantity(item);
                      },
                      child: Icon(
                        Icons.remove,
                        size: 12,
                      ),
                    ),
                    Text(
                      '  ${item.quantity.value}  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        controller.increaseQuantity(item);
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
      ],
    );
  }
}