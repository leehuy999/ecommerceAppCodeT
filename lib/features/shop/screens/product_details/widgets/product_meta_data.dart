import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/size.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(width: TSize.spaceBtwItems,)
          ],
        )
      ],
    );
  }
}
