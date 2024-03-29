import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/cart_items.dart';
import '../../../../../common/widgets/products/cart/cart_remove_button.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/size.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,  this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true, // thu nhỏh
        separatorBuilder: (_, __) => const SizedBox(
          height:   TSize.spaceBtwSections,
        ),
        itemCount: 2,

        /// trình tạo mục k dùng ngữ cảnh
        itemBuilder: (_, index) => Column(
          children: [
            const TCardItem(),
            if(showAddRemoveButtons)
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),

            ///add remove button row with title price
            if(showAddRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //exta space
                    const SizedBox(
                      width: 70,
                    ),

                    /// Add Remove button
                    TProductQuanityWithAddRemove()
                  ],
                ),
                ///product titlt pricec
                TProductPriceText(price: "256"),
              ],
            )
          ],
        ));
  }
}