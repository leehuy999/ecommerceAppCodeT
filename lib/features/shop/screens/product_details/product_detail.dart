import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerceappcodoet/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/section_heading.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_details/widgets/prodcut_detail_image_slider.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///1 product images slider
            TProductImageSlider(),

            /// 2- Product details
            Padding(
              padding: EdgeInsets.only(
                  right: TSize.defaultSpace,
                  left: TSize.defaultSpace,
                  bottom: TSize.defaultSpace),
              child: Column(
                children: [
                  ///Rating & share button
                  TRatingAndSahre(),
                  ///price, title, stackand brand
                  TProductMetaData(),
                  ///attributes
                  TProductAttributes(),
                  const SizedBox(height: TSize.spaceBtwSections,),

                  ///checkout Button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){},child: Text('Checkout'),),),
                  const SizedBox(height: TSize.spaceBtwSections,),

                  ///desription
                  const TSectionHeading(title: 'Description',showActionButon: false,),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve vest.There are more things that can be added but i am just practicing and nothong else.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  ///reviews
                  const Divider(),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews (199)',showActionButon: false,),
                      IconButton(onPressed: () => Get.to(() => ProductReviewscreen()), icon: const Icon(Iconsax.arrow_right_3,size: 18,),),
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwSections,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


