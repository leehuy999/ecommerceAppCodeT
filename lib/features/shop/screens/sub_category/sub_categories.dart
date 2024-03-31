import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerceappcodoet/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/section_heading.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Sport',
        ),
        showSnackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Banner
              const TRoundedImage(
                  imageUrl: TImages.promoBaner1, width: double.infinity),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              ///Sub-Categories
              Column(
                children: [
                  ///Heading
                  TSectionHeading(
                    title: 'Sports shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections / 2,
                  ),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: TSize.spaceBtwItems,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) => ///(context,index) lấy ngữ cảnh và chỉ mục
                          const TProductCardHorizontal(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
