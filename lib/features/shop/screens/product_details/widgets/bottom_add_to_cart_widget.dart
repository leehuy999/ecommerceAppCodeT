import 'package:ecommerceappcodoet/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/helpers/helper_functions.dart';
class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TSize.defaultSpace, vertical: TSize.defaultSpace/2),
      decoration: BoxDecoration(
        color: dark? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSize.cardRadiusLg),
          topRight: Radius.circular(TSize.cardRadiusLg),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularIcon(icon: Iconsax.minus,
              backgroundColor: TColors.darkerGrey,
              width: 40,
              height: 40,
              color: TColors.white,),
              const SizedBox(width: TSize.spaceBtwItems,),
              Text('2',style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: TSize.spaceBtwItems,),
              const TCircularIcon(icon: Iconsax.add,
                backgroundColor: TColors.darkerGrey,
                width: 40,
                height: 40,
                color: TColors.white,),
            ],
          ),
          ElevatedButton(onPressed: (){},style:
              ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(TSize.md),
                backgroundColor: TColors.black,
                side: const BorderSide(color: TColors.black),
              ), child: const Text("Add to Cart"))
        ],
      ),
    );
  }
}
