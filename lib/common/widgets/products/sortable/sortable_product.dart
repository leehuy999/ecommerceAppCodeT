import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/size.dart';
import '../../layouts/grid_layout.dart';
import '../product_cards/product_card_horizontal.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdowwn
        DropdownButtonFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.sort),
            ),
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((option) => DropdownMenuItem(value: option ,child: Text(option)))
                .toList()),
        const SizedBox(height: TSize.spaceBtwSections,),
        ///Product
        TGridLayout(itemCount: 8, itemBuilder: (_, index)=> const TProductCardHorizontal())
      ],
    );
  }
}