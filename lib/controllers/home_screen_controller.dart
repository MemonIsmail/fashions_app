import 'package:fashions_app/routing/routes.dart';
import 'package:get/get.dart';

import '../model/product_model.dart';

class HomeScreenController extends GetxController{

  final List<ProductModel> products = [
    ProductModel(
        brand: 'The Mark Jacobs',
        productName: 'Traveler Tote',
        productImage: 'assets/Bag 1.jpg',
        price: '195.00',
        description: 'A roomy Backpack from the specialists in everyday bags at The Mark Jacobs',
        category: 'Bags'
    ),

    ProductModel(
        brand: 'Bembien',
        productName: 'Margot Medium Bag',
        productImage: 'assets/Bag 2.jpg',
        price: '275.00',
        description: 'A roomy Backpack from the specialists in everyday bags at Bembian',
        category: 'Bags'
    ),

    ProductModel(
        brand: 'Herschel Supply Co.',
        productName: 'Daypack Bagpack',
        productImage: 'assets/Bag 3.jpg',
        price: '40.00',
        description: 'A roomy Backpack from the specialists in everyday bags at Herschel Supply Co.',
        category: 'Bags'
    ),

    ProductModel(
        brand: 'Dagne Dover',
        productName: 'Diy bag, Simple Bags',
        productImage: 'assets/Bag 4.jpg',
        price: '195.00',
        description: 'A roomy Backpack from the specialists in everyday bags at Dagne Dover.',
        category: 'Bags'
    ),

    ProductModel(
        brand: 'Roller Rabbit',
        productName: 'Vado Odelle Dress',
        productImage: 'assets/Clothes 1.jpg',
        price: '198.00',
        description: 'Cotton-based stuff Shirt, suitable for Summer wear, from Roller Rabbit',
        category: 'Clothes'
    ),

    ProductModel(
        brand: 'Endless Rose',
        productName: 'Bubble Elastic T-shirt',
        productImage: 'assets/Clothes 2.jpg',
        price: '50.00',
        description: 'Cotton-based stuff Shirt, suitable for Summer wear, from Endless Rose',
        category: 'Clothes'
    ),

    ProductModel(
        brand: 'Madewell',
        productName: 'Gisselle Top in White Linen',
        productImage: 'assets/Clothes 4.jpg',
        price: '69.50',
        description: 'Cotton-based stuff Shirt, suitable for Summer wear, from Madewell',
        category: 'Clothes'
    ),

    ProductModel(
        brand: 'Theory',
        productName: 'Irregular Rib Skirt',
        productImage: 'assets/Clothes 3.jpg',
        price: '345.00',
        description: 'Cotton-based stuff Shirt, suitable for Summer wear, from Theory',
        category: 'Clothes'
    ),

    ProductModel(
        brand: 'Axel Arigato',
        productName: 'Clean 90 Triple Sneakers',
        productImage: 'assets/Shoes 1.jpg',
        price: '245.00',
        description: 'Engineered to Crush any movement-based workout, from Axel Arigato',
        category: 'Shoes'
    ),

    ProductModel(
        brand: 'Maison Margiela',
        productName: 'Replica Sneakers',
        productImage: 'assets/Shoes 2.jpg',
        price: '530.00',
        description: 'Engineered to Crush any movement-based workout, from Maison Margiela',
        category: 'Shoes'
    ),

    ProductModel(
        brand: 'Gia Borghini',
        productName: 'RHW Rosie 1 Sandals',
        productImage: 'assets/Shoes 3.jpg',
        price: '740.00',
        description: 'Get a little lift from these sandals featuring ruched straps, from Gia Borghini',
        category: 'Shoes'
    ),

    ProductModel(
        brand: 'Gia Borghini',
        productName: 'RHW Rosie 1 Sandals',
        productImage: 'assets/Shoes 4.jpg',
        price: '740.00',
        description: 'Get a little lift from these sandals featuring ruched straps, from Gia Borghini',
        category: 'Shoes'
    ),

    ProductModel(
        brand: 'On Ear Headphone',
        productName: 'Beats Solo3 Wireless Kulak',
        productImage: 'assets/Electronics 1.jpg',
        price: '105.00',
        description: 'Experience the bass boosted and noise cancelling sound, from On Ear Headphone',
        category: 'Electronics'
    ),

    ProductModel(
        brand: 'Apple Watch',
        productName: 'Apple Watch Series 6',
        productImage: 'assets/Electronics 2.jpg',
        price: '475.00',
        description: 'All new Apple Watch Series 6, from Apple',
        category: 'Electronics'
    ),

    ProductModel(
        brand: 'Table Lamp LED',
        productName: 'Lamp For Students',
        productImage: 'assets/Electronics 3.jpg',
        price: '40.00',
        description: 'A perfect lamp for night study, from Table lamp',
        category: 'Electronics'
    ),

    ProductModel(
        brand: 'Light Bulb',
        productName: 'Incandescent light bulb',
        productImage: 'assets/Electronics 4.jpg',
        price: '195.00',
        description: 'Brighter than your dreams',
        category: 'Electronics'
    ),
  ];

  void onProductPressed(int index){
    final task = products[index];
    Get.toNamed(
        kProductDetailsRoute,
        arguments: task
    );
  }
}