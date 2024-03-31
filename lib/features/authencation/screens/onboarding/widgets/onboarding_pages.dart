import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages(
      {super.key,
      required this.images,
      required this.title,
      required this.subTitle});

  final String images, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Padding(padding: const EdgeInsets.all(TSize.defaultSpace)),
        Column(
          children: [
            Image(
              width: THelperFunctions.screenWidth() * 0.6,
              height: THelperFunctions.screenHeight() * 0.4,
              image: AssetImage(images),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }
}
