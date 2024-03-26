import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerceappcodoet/features/shop/screens/product_reviews/widgets/user_reviews_card.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/ratings/ratings_indicator.dart';

class ProductReviewscreen extends StatelessWidget {
  const ProductReviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Bar
      appBar: TAppBar(
        title: Text('Reviews & Ratings'),
      ),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and reviews are verified and are from people who use the same type of device that you use"),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              ///Overal Product Ratings
              const TOveralProductrting(),
              //tao rating danh gia
              TRatingBarIndicator(rating: 3.5,),
              Text('12,611',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              ///User Review Lists
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


