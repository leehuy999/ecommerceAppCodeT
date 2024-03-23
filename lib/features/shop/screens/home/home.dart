import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/primar_header_container.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerceappcodoet/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceappcodoet/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/section_heading.dart';
import 'package:ecommerceappcodoet/features/shop/screens/home/home.dart';
import 'package:ecommerceappcodoet/features/shop/screens/home/widget/home_appbar.dart';
import 'package:ecommerceappcodoet/features/shop/screens/home/widget/home_categorie.dart';
import 'package:ecommerceappcodoet/features/shop/screens/home/widget/promo_slider.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  THomeAppBar(),
                  const SizedBox(height:  TSize.spaceBtwSections,),
                  /// Search bar
                  TSearchContainer(text: 'Search in Store',),
                  const SizedBox(height:  TSize.spaceBtwSections,),
                  ///categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      children: [
                        ///Heading
                        TSectionHeading(title: 'Popular Categories',showActionButon: false,),
                        const SizedBox(height:  TSize.spaceBtwItems,),

                        /// categories
                        THomeCategories(),

                      ],
                    ),
                  )
                ],
              ),
            ),
            ///Body
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const TPromoSlider(banner: [TImages.promoBaner1,TImages.promoBaner2,TImages.promoBaner3],),
                  const SizedBox(height: TSize.spaceBtwSections,),

                  ///Heading
                   TSectionHeading(title: 'Popular Products', onPressed: (){},),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  ///Popular product  ssss
                  /// chế độ xem lưới
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical(),)
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}










