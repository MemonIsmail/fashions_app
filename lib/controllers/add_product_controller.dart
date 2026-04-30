import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:fashions_app/firebase/services/product_services.dart';
import 'package:fashions_app/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddProductController extends GetxController{

  final brandController = TextEditingController();
  final productController = TextEditingController();
  final priceController = TextEditingController();
  final descriptionController = TextEditingController();
  final categoryController = TextEditingController();

  final _productServices = ProductServices();

  final Rx<File?> pickedFile = Rx<File?>(null);

  Future<void> pickImage() async{
    final XFile? xFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(xFile != null){
      pickedFile.value = File(xFile.path);
    }
  }

  Future<void> uploadProduct(String brand, String productName, String price, String description, String category) async{
    if(pickedFile.value == null){
      Get.snackbar('Error', 'Please pick an image first');
      return;
    }
    try{
      final Uint8List? compressed = await FlutterImageCompress.compressWithFile(
        pickedFile.value!.path,
        minWidth: 600,
        minHeight: 600,
        quality: 70,
        format: CompressFormat.jpeg,
      );
      if(compressed == null){
        throw Exception('Compression Failed');
      }

      final String base64Image = base64Encode(compressed);

      final ProductModel product = ProductModel(
        id: DateTime.now().millisecondsSinceEpoch,
        brand: brand,
        productName: productName,
        productImage: base64Image,
        price: price,
        category: category,
        description: description
      );

      await _productServices.addProduct(product);

      Get.snackbar('Success', 'Product added Successfully');

      pickedFile.value = null;

    } catch(e){
      Get.snackbar('Error', 'Upload Failed');
    }
  }
}