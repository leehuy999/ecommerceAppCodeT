import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/size.dart';

class TRatingAndSahre extends StatelessWidget {
  const TRatingAndSahre({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Iconsax.star5, color: Colors.amber, size: 24,),
        const SizedBox(width: TSize.spaceBtwItems /2,),
        Text.rich(TextSpan(
            children: [
              TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: '(199)')
            ]
        ))
      ],
    );
  }
}