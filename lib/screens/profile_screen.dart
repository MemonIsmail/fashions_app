import 'package:fashions_app/controllers/profile_screen_controller.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:fashions_app/screens/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView<ProfileScreenController>{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: 'Logout',
                  buttonColor: kBlackColor,
                  borderColor: kBlackColor,
                  textColor: kWhiteColor,
                  onPressed: (){
                    controller.onLogoutPressed();
                  }
                ),
                (controller.currentEmail == 'memonismail2003@gmail.com')
                ? GestureDetector(
                  onTap: (){
                    controller.toAddProductScreen();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kBlackColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.add,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ) : SizedBox.shrink()
              ],
            ),
            SizedBox(height: Get.height * 0.04,),
            Container(
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: kBlackColor,
                  ),
                ),
                title: Text(
                  controller.currentName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text(
                  controller.currentEmail,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.02,),
            Container(
              decoration: BoxDecoration(
                border: BoxBorder.all(
                  color: Color(0xFFE0E0E0),
                  width: 1.5
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Column(
                  children: [
                    _section('Personal Details', Icons.person),
                    _section('My Order', Icons.shopping_bag),
                    _section('My Favourites', Icons.favorite),
                    _section('Shipping Address', Icons.local_shipping),
                    _section('My Card', Icons.credit_card),
                    _section('Settings', Icons.settings),

                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
  Widget _section(String sectionName, IconData icon){
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Icon(
            icon,
            size: 28,
            color: kBlackColor,
          ),
        ),
      ),
      title: Text(
        sectionName,
        style: TextStyle(
            fontWeight: FontWeight.bold
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: kBlackColor,
        size: 15,
      ),
    );
  }
}