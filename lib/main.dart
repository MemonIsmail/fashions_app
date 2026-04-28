import 'package:fashions_app/routing/route_management.dart';
import 'package:fashions_app/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: kSplashScreenRoute,
      getPages: RouteManagement.getPages(),
    );
  }
}
