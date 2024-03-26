import 'dart:ui';

import 'package:ecommerceappcodoet/common/widgets/chips/choice_chip.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/product_price_text.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/section_heading.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///Selected Attribute Price and description
        TRoundedContainer(
          backgroundColor: dark? TColors.darkerGrey : TColors.dark,
          child: Column(
            children: [
              ///Title, price  and stock status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation',showActionButon: false,),
                  const SizedBox(width: TSize.spaceBtwItems,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price', smallSize: true,),

                          ///Actual Price
                          Text('\$25',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                          const SizedBox(width: TSize.spaceBtwItems,),

                          /// Sales Price
                          const TProductPriceText(price: '20'),
                        ],
                      ),

                      ///Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock',smallSize: true,),
                          Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),

                        ],
                      )
                    ],
                  )
                ],
              ),
              const TProductTitleText(
                title: 'This is Description of the Product and it can go up to max 4 line',
                smallSize: true,
                maxlines: 4,
              ),

            ],
          ),
        ),

        const SizedBox(height: TSize.spaceBtwItems ),

        ///Atributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Color'),
            const SizedBox(height: TSize.spaceBtwItems /2,),
            /// bpjc theo chiều ngang
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green',selected: true,onSelected: (value){},),
                TChoiceChip(text: 'Blue',selected: false,onSelected: (value){},),
                TChoiceChip(text: 'Yellow',selected: false,onSelected: (value){},),
                TChoiceChip(text: 'Green',selected: false,onSelected: (value){},),
                TChoiceChip(text: 'Green',selected: false,onSelected: (value){},),
                TChoiceChip(text: 'Green',selected: false,onSelected: (value){},),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size'),
            const SizedBox(height: TSize.spaceBtwItems /2,),
            Wrap(
              spacing: 3,
              children: [
                TChoiceChip(text: 'EU 37',selected: false,onSelected: (value){},),
                TChoiceChip(text: 'EU 38',selected: false,onSelected: (value){},),
                TChoiceChip(text: 'EU 39'
                    '',selected: false,onSelected: (value){},),
              ],
            )
          ],
        )
      ],
    );
  }
}

