import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(height:  150,
            image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo)),
        Text(TTexts.loginTitile,style: Theme.of(context).textTheme.headlineMedium,),
        Text(TTexts.loginSubTitile,style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}