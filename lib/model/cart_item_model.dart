import 'package:get/get.dart';

class CartItemModel {
  final String brand;
  final String productName;
  final String productImage;
  final double price;

  var quantity = 1.obs;

  CartItemModel({
    required this.brand,
    required this.productName,
    required this.productImage,
    required this.price,
  });
}
