import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerceappcodoet/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_details/widgets/prodcut_detail_image_slider.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
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
                  TRatingAndSahre()
                  ///price, title, stackand brand
                  ///attributes
                  ///desription
                  ///reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


