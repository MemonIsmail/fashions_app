import 'package:fashions_app/controllers/main_navigation_controller.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class MainNavigation extends GetView<MainNavigationController>{
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
    return Obx(() {
      final int currentIndex = controller.index.value;
      return Scaffold(
        bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: NavigationBar(
              indicatorColor: kBlackColor,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              selectedIndex: currentIndex,
              onDestinationSelected: (value) {
                controller.index.value = value;
              },
              backgroundColor: kWhiteColor,
              destinations: [
                NavigationDestination(
                  icon:
                  Icon(
                    Icons.home_filled,
                    color: (controller.index.value == 0)
                        ? kWhiteColor
                        : kBlackColor,
                  ),
                  label: '',
                ),

                NavigationDestination(
                  icon:
                  Icon(
                    Icons.shopping_cart,
                    color: (controller.index.value == 1)
                        ? kWhiteColor
                        : kBlackColor,
                  ),
                  label: '',
                ),

                NavigationDestination(
                  icon:
                  Icon(
                    Icons.notifications_rounded,
                    color: (controller.index.value == 2)
                        ? kWhiteColor
                        : kBlackColor,
                  ),
                  label: '',
                ),

                NavigationDestination(
                  icon:
                  Icon(
                    Icons.person,
                    color: (controller.index.value == 3)
                        ? kWhiteColor
                        : kBlackColor,
                  ),
                  label: '',
                ),
              ],
            )
        ),
        body: screens[controller.index.value],
      );
    }
    );
  }
  }