import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/t_brand_titile_text_with_icon.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/shadows.dart';
import '../../icons/t_circular_icon.dart';
import '../../texts/product_price_text.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(TSize.productImageRadius),
    color: dark ? TColors.darkerGrey : TColors.lightContainer,),
      child: Row(
        children: [
          ///Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSize.sm),
            backgroundColor: dark ? TColors.dark : TColors.white,
            child:  Stack(

              children: [
                ///Thumb nail
                SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true,),
                ),

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
            ),
          ),

          ///Detail
           SizedBox(
            width: 172,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: TSize.sm,left: TSize.sm),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(title: 'Green Nike Haft Sleeves Shirt',smallSize: true,),
                        SizedBox(height: TSize.spaceBtwItems/2,),
                        TBrandTitleWithVerifiedIcon(title: 'Nike'),
                      ],
                    ),

                    const Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///Pricing
                        const Flexible(child: const TProductPriceText(price: '256',)),

                        ///Add to cart
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
