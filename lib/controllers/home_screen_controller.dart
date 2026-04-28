import 'package:get/get.dart';

import '../model/product_model.dart';

class HomeScreenController extends GetxController{

  final List<ProductModel> products = [
    ProductModel(
        brand: 'The Mark Jacobs',
        productName: 'Traveler Tote',
        productImage: 'assets/Bag 1.jpg',
        price: '195.00'
    ),

    ProductModel(
        brand: 'Bembien',
        productName: 'Margot Medium Bag',
        productImage: 'assets/Bag 2.jpg',
        price: '275.00'
    ),

    ProductModel(
        brand: 'Herschel Supply Co.',
        productName: 'Daypack Bagpack',
        productImage: 'assets/Bag 3.jpg',
        price: '40.00'
    ),

    ProductModel(
        brand: 'Dagne Dover',
        productName: 'Diy bag, Simple Bags',
        productImage: 'assets/Bag 4.jpg',
        price: '195.00'
    ),

    ProductModel(
        brand: 'Roller Rabbit',
        productName: 'Vado Odelle Dress',
        productImage: 'assets/Clothes 1.jpg',
        price: '198.00'
    ),

    ProductModel(
        brand: 'Endless Rose',
        productName: 'Bubble Elastic T-shirt',
        productImage: 'assets/Clothes 2.jpg',
        price: '50.00'
    ),

    ProductModel(
        brand: 'Madewell',
        productName: 'Gisselle Top in White Linen',
        productImage: 'assets/Clothes 4.jpg',
        price: '69.50'
    ),

    ProductModel(
        brand: 'Theory',
        productName: 'Irregular Rib Skirt',
        productImage: 'assets/Clothes 3.jpg',
        price: '345.00'
    ),

    ProductModel(
        brand: 'Axel Arigato',
        productName: 'Clean 90 Triple Sneakers',
        productImage: 'assets/Shoes 1.jpg',
        price: '245.00'
    ),

    ProductModel(
        brand: 'Maison Margiela',
        productName: 'Replica Sneakers',
        productImage: 'assets/Shoes 2.jpg',
        price: '530.00'
    ),

    ProductModel(
        brand: 'Gia Borghini',
        productName: 'RHW Rosie 1 Sandals',
        productImage: 'assets/Shoes 3.jpg',
        price: '740.00'
    ),

    ProductModel(
        brand: 'Gia Borghini',
        productName: 'RHW Rosie 1 Sandals',
        productImage: 'assets/Shoes 3.jpg',
        price: '740.00'
    ),

    ProductModel(
        brand: 'On Ear Headphone',
        productName: 'Beats Solo3 Wireless Kulak',
        productImage: 'assets/Electronics 1.jpg',
        price: '105.00'
    ),

    ProductModel(
        brand: 'Apple Watch',
        productName: 'Apple Watch Series 6',
        productImage: 'assets/Electronics 2.jpg',
        price: '475.00'
    ),

    ProductModel(
        brand: 'Table Lamp LED',
        productName: 'Lamp For Students',
        productImage: 'assets/Electronics 3.jpg',
        price: '40.00'
    ),

    ProductModel(
        brand: 'Light Bulb',
        productName: 'Incandescent light bulb',
        productImage: 'assets/Electronics 3.jpg',
        price: '195.00'
    ),
  ];
}