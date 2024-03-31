// import 'dart:ui';

import 'package:ecommerceappcodoet/common/styles/shadows.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/product_price_text.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/t_brand_titile_text_with_icon.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_details/product_detail.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSize.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          // tao cot chuta san pham
          children: [
            TRoundedContainer(
                height: 180,
                padding: const EdgeInsets.all(TSize.sm),
                backgroundColor: dark ? TColors.dark : TColors.light,
                child: Stack(
                  // tao xep chong chua cac muc anh
                  children: [
                    ///thumbnail image
                    const TRoundedImage(
                        imageUrl: TImages.productImage1,
                        applyImageRadius: true),

                    /// Sale tag
                    /// the sale 25%
                    Positioned(
                        top: 12,
                        child: TRoundedContainer(
                          radius: TSize.sm,
                          backgroundColor: TColors.secondary.withOpacity(0.1),
                          padding: const EdgeInsets.symmetric(
                              horizontal: TSize.sm, vertical: TSize.xs),
                          child: Text(
                            "25%",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .apply(color: TColors.black),
                          ),
                        )),

                    ///Favorite button
                    const Positioned(
                        top: 0,
                        right: 0,
                        child: TCircularIcon(
                          icon: Iconsax.heart5,
                          color: Colors.red,
                        ))
                  ],
                )),
            const SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),

            ///Detail
            Padding(
              padding: const EdgeInsets.only(left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                    title: "Green Nike Air Shoes",
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwItems / 2,
                  ),
                 TBrandTitleWithVerifiedIcon(title: 'Nike',)
                ],
              ),
            ),

            //To do : add spacer()  here to keep the height of each box same in case 1 or 2 line of heading
            Spacer(),
            ///price now
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///price
                TProductPriceText( price: '35.0',),


                ///add to cart
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSize.cardRadiusMd),
                        bottomRight:
                        Radius.circular(TSize.productImageRadius)),
                  ),
                  child: const SizedBox(
                    width: TSize.iconLg * 1.2,
                    height: TSize.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: TColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


