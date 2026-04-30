import 'package:fashions_app/routing/routes.dart';
import 'package:get/get.dart';

class ProfileScreenController extends GetxController{
  void onLogoutPressed(){
    Get.offAllNamed(kLoginScreenRoute);
  }
}