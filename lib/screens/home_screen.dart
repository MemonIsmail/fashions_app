import 'package:fashions_app/controllers/home_screen_controller.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:fashions_app/screens/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeScreenController>{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        toolbarHeight: Get.height * 0.12,
        backgroundColor: Colors.grey[50],
        actions: [
          SizedBox(
            height: 50,
            width: 280,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for Products',
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[400],
                ),
                hintStyle: TextStyle(
                  color: Colors.grey[400]
                ),
                filled: true,
                fillColor: kWhiteColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
          )
        ],
        actionsPadding: EdgeInsets.only(top: 20, left: 20, right: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Products',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17
              ),
            ),

            SizedBox(height: Get.height * 0.01,),
            Expanded(
              child: GridView.builder(
                itemCount: controller.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.56
                ),
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: (){
                      controller.onProductPressed(index);
                    },
                    child: CustomProductCard(
                        product: controller.products[index]
                    ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}