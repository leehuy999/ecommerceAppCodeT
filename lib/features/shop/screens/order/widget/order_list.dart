import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_,__) => const SizedBox(height: TSize.spaceBtwItems,),
      itemBuilder: (_,index) => TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSize.md),
        backgroundColor: dark ? TColors.dark : TColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Row 1
            Row(
              children: [
                ///1 icon
                const Icon(Iconsax.ship),
                const SizedBox(width: TSize.spaceBtwItems/2,),
      
                ///2 status date
                Expanded(child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Processing',style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,fontWeightDelta: 1),),
                    Text('07 Nov 2024',style: Theme.of(context).textTheme.headlineSmall,),
                  ],
                )),
      
                ///3 Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: TSize.iconSm,))
              ],
            ),
            const SizedBox(width: TSize.spaceBtwItems,),
      
      
            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///1 icon
                      const Icon(Iconsax.ship),
                      const SizedBox(width: TSize.spaceBtwItems/2,),
      
                      ///2 status date
                      Expanded(child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order',style: Theme.of(context).textTheme.labelMedium),
                          Text('[#121s2]',style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      )),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      ///1 icon
                      const Icon(Iconsax.ship),
                      const SizedBox(width: TSize.spaceBtwItems/2,),
      
                      ///2 status date
                      Expanded(child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shipping Date',style: Theme.of(context).textTheme.labelMedium),
                          Text('03 Feb 2024',style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
