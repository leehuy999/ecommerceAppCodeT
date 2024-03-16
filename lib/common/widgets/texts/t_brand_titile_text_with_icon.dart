import 'package:ecommerceappcodoet/common/widgets/texts/t_brand_title_text.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/enums.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon(
      {super.key,
      required this.title,
       this.maxLine =1,
      this.textColor,
      this.iconColor = TColors.primary,
      this.textAlign = TextAlign.center,
       this.brandTextSize = TextSizes.small});

  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: TBrandTitlexet(
          title: title,
          color: textColor,
          maxLine: maxLine,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        )),
        const SizedBox(width: TSize.xs,),
        Icon(Iconsax.verify5,color: iconColor, size: TSize.iconXs,)
      ],
    );
  }
}
