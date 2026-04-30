import 'package:fashions_app/routing/routes.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreenController extends GetxController{

  @override
  void onInit() {
    super.onInit();
    getNameAndPassword();
  }

  String currentName = '';
  String currentEmail = '';

  void onLogoutPressed() async{
    Get.offAllNamed(kLoginScreenRoute);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  Future<void> getNameAndPassword() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    currentName = prefs.getString('userName') ?? '';
    currentEmail = prefs.getString('email') ?? '';
  }

  void toAddProductScreen(){
    Get.toNamed(kAddProductRoute);
  }
}