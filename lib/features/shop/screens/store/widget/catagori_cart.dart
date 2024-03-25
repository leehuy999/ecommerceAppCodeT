import 'package:ecommerceappcodoet/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceappcodoet/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/size.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      /// cho phép cuộn danh sách
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// Brand
              const TBrandShowCase(images: [TImages.productImage1,TImages.productImage2, TImages.productImage3],),
              const TBrandShowCase(images: [TImages.productImage1,TImages.productImage2, TImages.productImage3],),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///Products
              TSectionHeading(title: 'You might like',onPressed: () {},),
              const SizedBox(height: TSize.spaceBtwItems,),
              // hiển thị mục 4 sản phẩm dạng danh sách
              TGridLayout(itemCount: 4, itemBuilder: (_,index) => const TProductCardVertical()),
              const SizedBox(height: TSize.spaceBtwSections,),
            ],
          ),
        )
      ],
    );
  }
}