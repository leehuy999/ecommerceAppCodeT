import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_images.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_titile_text_with_icon.dart';

class TCardItem extends StatelessWidget {
  const TCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///Image
        TRoundedImage(imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSize.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.white,),
        const SizedBox(
          width: TSize.spaceBtwItems,
        ),

        ///title, price and size
        Expanded(child: Column(
          ///hiển thị nhỏ
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TBrandTitleWithVerifiedIcon(title: 'Nike'),
            const Flexible(child: TProductTitleText(title: 'Black Sports Shoes',maxlines: 1,)),/// thêm tinshlinh hoạt cho bản mở rộng
            ///Atrribute
            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'UK 08',style: Theme.of(context).textTheme.bodyLarge),
                    ]
                )
            )
          ],
        ))
      ],
    );
  }
}