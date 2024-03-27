import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/t_brand_titile_text_with_icon.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/cart/cart_items.dart';
import '../../../../common/widgets/products/cart/cart_remove_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showSnackArrow: true,
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),

          /// tạo danh sách hiển thị
          child: ListView.separated(
              shrinkWrap: true, // thu nhỏh
              separatorBuilder: (_, __) => const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
              itemCount: 4,

              /// trình tạo mục k dùng ngữ cảnh
              itemBuilder: (_, index) => Column(
                    children: [
                      const TCartItem(),
                      const SizedBox(
                        height: TSize.spaceBtwItems,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 70,
                          ),

                          /// Add Remove button
                          TProductQuanityWithAddRemove()
                        ],
                      )
                    ],
                  )),
        ),
      ),
    );
  }
}


