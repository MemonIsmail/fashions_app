import 'package:fashions_app/model/product_model.dart';
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
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            product.productImage,
            fit: BoxFit.cover,
          ),
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
