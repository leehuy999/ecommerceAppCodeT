import 'package:ecommerceappcodoet/features/shop/screens/home/home.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode=  THelperFunctions.isDarkMode(context);
    return Scaffold(
      //dùng obx để hiển thị thay đổi
      //thay vì dùng setstate vẽ lại toàn màn hình ta dùng getX thay đổi những gì cần thiết
      bottomNavigationBar: Obx(() => NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        //hiển thị chỉ mục đâng ở trang nào
        onDestinationSelected: (index) => controller.selectedIndex.value = index,
        backgroundColor: darkMode ? TColors.black : Colors.white,
        indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : Colors.black.withOpacity(0.1),
         destinations: const[
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
        NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
        NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
        NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
      ],
      ),),
      body: Obx(()=>controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), Container(color: Colors.purple,), Container(color: Colors.orange,), Container(color: Colors.blue,)];
}
