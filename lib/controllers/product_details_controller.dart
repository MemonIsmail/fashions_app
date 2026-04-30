import 'dart:ui';

import 'package:fashions_app/screens/screen_colors.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController{
  var selectedSize = 0.obs;
  var currentQuantity = 1.obs;
  var selectedColor = 0.obs;

  var colors = [
    kWhiteColor,
    Color(0xffd8ccce),
    kBlackColor,
    Color(0xff4d4a5d)
  ].obs;

  var clothesSizes = [
    'S', 'M', 'L', 'XL'
  ].obs;

  var shoesSizes = [
    '39', '39.5', '40', '40.5', '41'
  ].obs;

  void updateSize(int index){
    selectedSize.value = index;
  }

  void updateColor(int index){
    selectedColor.value = index;
  }

  void addQuantity(){
    currentQuantity.value += 1;
  }

  void decreaseQuantity(){
    currentQuantity.value -= 1;
  }
}