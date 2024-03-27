import 'package:ecommerceappcodoet/features/shop/screens/cart/cart.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/helpers/helper_functions.dart';

//tạo widget dùng cho các trang khác nhau
class TCounterIcon extends StatelessWidget {
  const TCounterIcon({
    super.key, required this.iconColor, required this.onPressed, this.counterBgColor,
  });

  final Color? iconColor,counterBgColor;/// counterTextColor
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(()=> const CartScreen()),
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        // tạo 1 mục thông báo có bao nhieu hàng
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: counterBgColor ?? ( dark ? TColors.white : TColors.black),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(
                    color: TColors.white,
                    fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
