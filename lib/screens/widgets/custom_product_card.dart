import 'package:fashions_app/model/product_model.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomProductCard extends StatelessWidget {
  final ProductModel product;
  const CustomProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                product.productImage,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 11,
              right: 11,
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kBlackColor,
                  ),
                  child: Icon(
                    Icons.favorite_outline,
                    color: kWhiteColor,
                    size: 10,
                  ),
                ),
              ),
            )
          ],
        ),

        SizedBox(height: Get.height * 0.01),
        Text(
          product.brand,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
        ),

        Text(
          product.productName,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),

        Text(
          '\$${product.price}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
      ],
    );
  }
}
