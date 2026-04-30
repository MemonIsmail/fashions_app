import 'package:fashions_app/routing/routes.dart';
import 'package:fashions_app/routing/screen_bindings.dart';
import 'package:fashions_app/screens/add_product_screen.dart';
import 'package:fashions_app/screens/cart_screen.dart';
import 'package:fashions_app/screens/home_screen.dart';
import 'package:fashions_app/screens/login_screen.dart';
import 'package:fashions_app/screens/main_navigation.dart';
import 'package:fashions_app/screens/product_details_screen.dart';
import 'package:fashions_app/screens/profile_screen.dart';
import 'package:fashions_app/screens/signup_screen.dart';
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

      GetPage(
        name: kSignupScreenRoute,
        page: () => SignupScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: kLoginScreenRoute,
        page: () => LoginScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: kHomeScreenRoute,
        page: () => HomeScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: kMainNavigationRoute,
        page: () => MainNavigation(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: kProductDetailsRoute,
        page: () => ProductDetailsScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: kProfileScreenRoute,
        page: () => ProfileScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: kCartScreenRoute,
        page: () => CartScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: kAddProductRoute,
        page: () => AddProductScreen(),
        binding: ScreenBindings(),
      ),
    ];
  }
}