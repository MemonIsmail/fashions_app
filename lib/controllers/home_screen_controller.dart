import 'package:fashions_app/firebase/services/product_services.dart';
import 'package:fashions_app/routing/routes.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/product_model.dart';

class HomeScreenController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    getAllProducts();
  }
  RxList<ProductModel> allProducts = <ProductModel>[].obs;

  final _productServices = ProductServices();

  Future<void> getAllProducts() async{
    try{
      final product = await _productServices.getAllProducts();
      for(var prod in product){
        if(prod != null){
          allProducts.add(prod);
        }
      }
    } catch(e){
      Get.snackbar('Error', 'Failed to load Products');
    }
  }



  void onProductPressed(int index){
    final product = allProducts[index];
    Get.toNamed(
      kProductDetailsRoute,
      arguments: product
    );
  }
}