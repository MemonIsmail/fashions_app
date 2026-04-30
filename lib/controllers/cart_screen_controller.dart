import 'package:get/get.dart';

import '../model/cart_item_model.dart';
import '../model/product_model.dart';

class CartScreenController extends GetxController{

  var cartItems = <CartItemModel>[].obs;

  void addToCart(ProductModel product, int quantity) {

    final alreadyInCart = cartItems.firstWhereOrNull(
      (item) => item.productName == product.productName,
    );

    if (alreadyInCart != null) {
      alreadyInCart.quantity.value += quantity;
    } else {
      cartItems.add(
        CartItemModel(
          brand: product.brand,
          productName: product.productName,
          productImage: product.productImage,
          price: product.price,
        ),
      );
    }
  }

  void increaseQuantity(CartItemModel item) {
    item.quantity.value += 1;
  }

  void decreaseQuantity(CartItemModel item) {
    if (item.quantity.value > 1) {
      item.quantity.value -= 1;
    } else {
      cartItems.remove(item);
    }
  }

  double get subtotal {
    double total = 0;
    for (var item in cartItems) {
      total += item.price * item.quantity.value;
    }
    return total;
  }

  int get totalItems {
    int count = 0;
    for (var item in cartItems) {
      count += item.quantity.value;
    }
    return count;
  }
}