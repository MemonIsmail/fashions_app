import 'package:fashions_app/routing/routes.dart';
import 'package:fashions_app/routing/screen_bindings.dart';
import 'package:fashions_app/screens/splash_screen_2.dart';
import 'package:get/get.dart';

import '../screens/splash_screen.dart';

class RouteManagement {
  static List<GetPage> getPages(){
    return[
      GetPage(
        name: kSplashScreenRoute,
        page: () => SplashScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: kSplashScreen2Route,
        page: () => SplashScreen2(),
        binding: ScreenBindings(),
      ),
    ];
  }
}