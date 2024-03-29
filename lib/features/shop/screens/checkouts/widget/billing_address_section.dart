import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/section_heading.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address',buttonTitle: 'Chane',onPressed: () {},),
        Text('Coding with T', style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSize.spaceBtwItems /2,),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey,size: 16,),
            const SizedBox(height: TSize.spaceBtwItems ),
            Text('+1012223239',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems /2,),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey,size: 16,),
            const SizedBox(height: TSize.spaceBtwItems ),
            Text('South Liana, maine 1287 ,USA',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),
          ],
        )
      ],
    );
  }
}
