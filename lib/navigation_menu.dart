import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
          ()=> NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>controller.selectedIndex.value=index,
            backgroundColor: dark?Colors.black:Colors.white,
              indicatorColor: dark ? Colors.white.withAlpha(25) : Colors.black.withAlpha(25),

            destinations: [
          NavigationDestination(icon: Icon(Iconsax.home),label: "Home"),
          NavigationDestination(icon: Icon(Iconsax.shop),label: "Store"),
          NavigationDestination(icon: Icon(Iconsax.heart),label: "Wishlist"),
          NavigationDestination(icon: Icon(Iconsax.user),label: "Profile"),
        ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value])
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [HomeScreen(),Container(color: Colors.purple,),Container(color: Colors.orange,),Container(color: Colors.blue,),];
}
