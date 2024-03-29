import 'package:flutter/material.dart';

import '../../../../../utils/constants/size.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///sub total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$234',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/2,),

        ///Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$4',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/2,),

        ///Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$5',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/2,),


        ///Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$123',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
      ],
    );
  }
}
