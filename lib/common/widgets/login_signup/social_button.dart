import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';

class TSocialButton extends StatelessWidget {
  const TSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                width: TSize.iconMd,
                height: TSize.iconMd,
                image: AssetImage(TImages.google)),
          ),
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                width: TSize.iconMd,
                height: TSize.iconMd,
                image: AssetImage(TImages.facebook)),
          ),
        ),
      ],
    );
  }
}