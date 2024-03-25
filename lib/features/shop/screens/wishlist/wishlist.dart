import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerceappcodoet/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceappcodoet/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerceappcodoet/features/shop/screens/home/home.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('WishLít',style: Theme.of(context).textTheme.headlineMedium,),
        action: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 4, itemBuilder: (_,index)=> const TProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}