import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_circular_image.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/product_price_text.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/t_brand_titile_text_with_icon.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/enums.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price and Sale Price
        Row(
          children: [
            /// sale tag
            TRoundedContainer(
              radius: TSize.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSize.sm, vertical: TSize.xs),
              child: Text('25%', style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.black),),
            ),
            const SizedBox(width: TSize.spaceBtwItems,),

            ///Price
            Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSize.spaceBtwItems,),
            const TProductPriceText(price: '175',isLarge: true),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/1.5,),

        ///Title
        const TProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: TSize.spaceBtwItems/1.5,),

        /// Stack status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSize.spaceBtwItems,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/1.5,),

        /// Brand
        Row(
          children: [
            TCircularmage(image: TImages.shoeIcon,
            width: 32,
                height: 32,
                overlayColor: darkMode? TColors.white: TColors.black,),
            const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
