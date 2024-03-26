import 'package:ecommerceappcodoet/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class TOveralProductrting extends StatelessWidget {
  const TOveralProductrting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// expanded nap khoang trong chia cac wiget
        /// Expanded là một widget giúp mở rộng không gian cho một widget con của Row hoặc Column theo trục chính (main axis).
        /// Chú ý, trục chính của Row là trục nằm ngang, và trục chính của Column là trục thẳng đứng.
        Expanded(
            flex: 3,
            child: Text(
              '4.8',
              style: Theme.of(context).textTheme.displayLarge,
            )),
        Expanded(
            flex: 7,
            child: Column(
              children: [
                TRatingProgressIndicator(text: '5', value: 1,),
                TRatingProgressIndicator(text: '4', value: 0.8,),
                TRatingProgressIndicator(text: '3', value: 0.6,),
                TRatingProgressIndicator(text: '2', value: 0.4,),
                TRatingProgressIndicator(text: '1', value: 0.2,),
              ],
            ))
      ],
    );
  }
}