import 'dart:ui';

import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/common/widgets/products/ratings/ratings_indicator.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1),),
                const SizedBox(width: TSize.spaceBtwItems,),
                Text('John Doe',style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),

            ///Reviews
            Row(
              children: [
                const TRatingBarIndicator(rating: 4),
                const SizedBox(width: TSize.spaceBtwItems,),
                Text('01 Nov, 2023',style: Theme.of(context).textTheme.bodyMedium,),
              ],
            )
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly.Great joob!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const SizedBox(width: TSize.spaceBtwItems,),

        ///company review
        ///phản hồi store
        TRoundedContainer(
          backgroundColor: dark? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSize.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('TStore',style: Theme.of(context).textTheme.titleMedium,),
                    Text('02 Nov, 2023',style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                const SizedBox(height: TSize.spaceBtwItems,),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly.Great joob!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: TColors.primary),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
