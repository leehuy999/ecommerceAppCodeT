import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddresss});

  final bool selectedAddresss;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(TSize.md),
      backgroundColor: selectedAddresss
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      boderColor: selectedAddresss
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddresss ? Iconsax.tick_circle5 : null,
              color: selectedAddresss
                  ? dark
                      ? TColors.light
                      : TColors.dark.withOpacity(0.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSize.sm /2,),
              const Text('(+123) 456 789', maxLines: 1,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: TSize.sm /2,),
              const Text('82356 Time cover, new york ,us',softWrap: true,),
            ],
          )
        ],
      ),
    );
  }
}
